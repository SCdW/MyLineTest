classdef myLineTestClass < matlab.unittest.TestCase
        
    % Test Properties
    properties
        x
        a
        b
    end
    
    % Test Methods
    methods (Test)
        % Does "myline" give me the right answer?
        function shouldGiveCorrectAnswer(testCase)
            testCase.x = 1;
            testCase.a = 2;
            testCase.b = 3;
            
            y = myline(testCase.x, testCase.a, testCase.b);
            yExpected = 5;
            
            verifyEqual(testCase, y, yExpected)
            
        end
        
        % Does a negative input for x break "myline"?
        function shouldTestNegativeX(testCase)
            testCase.x = -1;
            testCase.a = 2;
            testCase.b = 3;
            
            y = myline(testCase.x, testCase.a, testCase.b);
            yExpected = 1;
            
            verifyEqual(testCase, y, yExpected, 'AbsTol', 1)
            
        end
        
        % Does a vector as input for x break "myline"?
        function shouldTestVectorX(testCase)            
            testCase.x = 1:3;
            testCase.a = 2;
            testCase.b = 3;
            
            y = myline(testCase.x, testCase.a, testCase.b);
            yExpected = 5:2:9;
            
            verifyEqual(testCase, y, yExpected)
            
        end
        
        % Does NaN as input for x break "myline"?
        function shouldTestNaNX(testCase)
            testCase.x = NaN;
            testCase.a = 2;
            testCase.b = 3;
            
            y = myline(testCase.x, testCase.a, testCase.b);
            yExpected = NaN;
            
            verifyEqual(testCase, y, yExpected)
            
        end

    end
end

