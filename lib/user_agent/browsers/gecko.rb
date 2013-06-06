class UserAgent
  module Browsers
    module Gecko
      def self.extend?(agent)
        agent.application && agent.application.product == "Mozilla"
      end

      GeckoBrowsers = %w(
        Firefox
        Camino
        Iceweasel
        Seamonkey
      ).freeze

      def browser
        GeckoBrowsers.detect { |browser| respond_to?(browser) } || super
      end

      def version
        send(browser).version || super
      end

      def platform
        if application.nil? || application.comment.nil?
          nil
        elsif application.comment[0] == 'compatible'
          nil
        elsif application.comment[0] =~ /Windows/
          'Windows'
        else
          application.comment[0]
        end
      end

      def security
        Security[application.comment[1]] || :strong
      end

      def os
        if application.nil? || application.comment.nil?
          nil
        elsif application.comment[0] =~ /Windows NT/
          OperatingSystems.normalize_os(application.comment[0])
        elsif application.comment[1] == 'U'
          OperatingSystems.normalize_os(application.comment[2])
        else
          OperatingSystems.normalize_os(application.comment[1])
        end
      end

      def localization
        if comment = application.comment
          comment[3]
        end
      end
    end
  end
end
