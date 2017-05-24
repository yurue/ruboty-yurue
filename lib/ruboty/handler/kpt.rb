require "ruboty/kpt/actions/kpt"

module Ruboty
  module Handlers
    class Kpt < Base
      on /kpt (?<ids>.*?)\z/, name: 'kpt', description: 'メンションのように複数のIDを与えると，KPTの順番を決めます'

      def kpt(message)
        Ruboty::Kpt::Actions::Kpt.new(message).call
      end
    end
  end
end