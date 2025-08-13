classdef classA
    properties
        propa1 = 1
        propa2 = 2
    end
    methods
        function out = methodA(obj,objB)
            out = obj.propa1 + objB.propb1;
        end
    end
end
