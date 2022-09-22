classdef MyLineTestClassParam < matlab.unittest.TestCase
        
    % Test Properties
    properties (TestParameter)
        x = {1, -5, 1:3, NaN}
        yexpected = {5, -7, 5:2:9, NaN}
    end

    % Test Methods
    methods (Test, ParameterCombination = 'sequential')
        
        function shouldGiveCorrectAnswer(testCase, x, yexpected)
            y = myline(x, 2, 3);
            verifyEqual(testCase, y, yexpected)
        end
        
    end %methods
end %class

