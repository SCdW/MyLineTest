function t = testMyLine()

    % Return the tests in this file
    t = functiontests(localfunctions);

end

% Does "myline" give me the right answer?
function test123(testCase)
    y = myline(1, 2, 3);
    verifyEqual(testCase, y, 5) 
    
end

% Does a negative input for x break "myline"?
function testNegativeX(testCase)
    y = myline(-1, 2, 3);
    verifyEqual(testCase, y, 1) 
 
end

% Does a vector as input for x break "myline"?
function testVectorX(testCase)
    y = myline(1:3, 2, 3);    
    verifyEqual(testCase, y, 5:2:9)
    
end

% Does NaN as input for x break "myline"?
function testNaN(testCase)
    y = myline(NaN, 2, 3);
    verifyEqual(testCase, y, NaN)
    
end
