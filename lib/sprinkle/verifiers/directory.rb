module Sprinkle
  module Verifiers
    # = Directory Verifier
    #
    # Defines a verify which can be used to test the existence of a 
    # directory.
    module Directory
      Sprinkle::Verify.register(Sprinkle::Verifiers::Directory)

      # Tests that the directory <tt>dir</tt> exists.
      def has_directory(dir)
        @commands << "test -d #{dir}"
      end

      def directory_empty(dir)
        @commands << "test -z \"$(ls -A #{dir})\""
      end

      def directory_not_empty(dir)
        @commands << "test -n \"$(ls -A #{dir})\""
      end
    end
  end
end
