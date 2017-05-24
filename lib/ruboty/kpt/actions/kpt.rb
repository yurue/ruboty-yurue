module Ruboty
  module Kpt
    module Actions
      class Kpt < Ruboty::Actions::Base
        def call
          message.reply(kpt)
        end

        private

        def kpt
          message = 'この順番でKPTしよう！\n'

          # 渡されたidをシャッフルする
          begin
            ids = message[:ids]
            ids.shuffle!
          rescue => e
            'ERROR: ' + e
          end

          # シャッフル済みのIDをメッセージとともに返す
          ids.join(' ')
        end
      end
    end
  end
end