module Ruboty
  module Kpt
    module Actions
      class Kpt < Ruboty::Actions::Base
        def call
          message.reply(kpt)
        end

        private

        def kpt
          # 渡されたidをシャッフルする
          begin
            ids = message[:ids].split
            ids.shuffle!
          rescue => e
            'ERROR: ' + e
          end

          # シャッフル済みのIDをメッセージとともに返す
          reply = "この順番でKPTしよう！\n"

          ids.each_with_index do |id, i|
            reply << "#{i+1}回目: #{id}\n"
          end

          reply
        end
      end
    end
  end
end