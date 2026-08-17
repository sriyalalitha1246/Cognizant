using System;

namespace SingletonPatternExample
{
    internal class Logger
    {
        // Step 1: Create a private static instance
        private static Logger instance;

        // Step 2: Make the constructor private
        private Logger()
        {
            Console.WriteLine("Logger instance created.");
        }

        // Step 3: Public method to return the same instance
        public static Logger GetInstance()
        {
            if (instance == null)
            {
                instance = new Logger();
            }

            return instance;
        }

        // Method to display log messages
        public void Log(string message)
        {
            Console.WriteLine("Log: " + message);
        }
    }
}