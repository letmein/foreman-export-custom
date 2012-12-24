module Foreman
  module Export
    class Custom < Base

      def export
        super
        error("Must specify template") unless options[:template]
        template = IO.read(options[:template])
        compiled = ERB.new(template).result(binding)
        write_file(app, compiled)
      end

    end
  end
end
