local cloneref = cloneref or function(i: Instance) return i; end;

local SG: StarterGui = cloneref(game:GetService("StarterGui"));

return {
    ["success"] = function(msg: string)
        SG:SetCore("SendNotification", {
            ["Title"] = "SUCCESS - READ BELOW",
            ["Text"] = msg,
            ["Duration"] = 60
        });
    end,
    ["error"] = function(err: string)
        SG:SetCore("SendNotification", {
            ["Title"] = "ERROR - READ BELOW",
            ["Text"] = err,
            ["Duration"] = 60
        });
    end
};
