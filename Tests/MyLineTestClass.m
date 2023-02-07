classdef MyLineTestClass < matlab.unittest.TestCase
        
    % Test Methods
    methods (Test)
        
        % Does "myline" give me the right answer?
        function shouldGiveCorrectAnswer(testCase)    
            y = myline(1, 2, 3);
            verifyEqual(testCase, y, 6)
            
        end %shouldGiveCorrectAnswer
        
        % Does a negative input for x break "myline"?
        function shouldTestNegativeX(testCase)
            y = myline(-5, 2, 3);
            verifyEqual(testCase, y, -7)

        end %shouldTestNegativeX
        
        % Does a vector as input for x break "myline"?
        function shouldTestVectorX(testCase)
            y = myline(1:3, 2, 3);
            verifyEqual(testCase, y, 5:2:9)
            
        end %shouldTestVectorX
        
        % Does NaN as input for x break "myline"?
        function shouldTestNaNX(testCase)
            y = myline(NaN, 2, 3);
            verifyEqual(testCase, y, NaN)
            
        end %shouldTestNaNX
        
    end %methods
end %class

