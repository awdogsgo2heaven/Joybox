module Joybox
  module Configuration

    class FileUtils < CCFileUtils

      def self.default_configuration
        {
          set_iphone_retina_display_suffix: "-hd",
          set_ipad_suffix: "-ipad",
          set_ipad_retina_display_suffix: "-ipadhd"
        }
      end

      def self.configure(options = {})
        options = options.nil? ? default_configuration : default_configuration.merge!(options)

        file_utils = FileUtils.sharedFileUtils
        file_utils.setiPhoneRetinaDisplaySuffix(options[:set_iphone_retina_display_suffix])
        file_utils.setiPadSuffix(options[:set_ipad_suffix])
        file_utils.setiPadRetinaDisplaySuffix(options[:set_ipad_retina_display_suffix])
      end

    end

  end
end