function t = mylineSmokeTest()

    % Return the tests in this file
    t = functiontests(localfunctions);

end

% Does "mylineScript" execute without warnings or errors?
function testScriptWarningFree(testCase)
    verifyWarningFree(testCase, @mylineScript)
end