local Webhook = loadstring(game:HttpGet("https://github.com/aaarolwe/typsh/blob/main/Webhook.lua"))()
local WEBHOOK_URL = '';

local Security = {};

-- TODO: Use our own backend logic rather than discord for logging the users infraction
function Security:LogInfraction(infraction)
    Webhook.new(WEBHOOK_URL):Send({
        content = string.format('%s - %s', accountData.uuid, infraction)
    }, true);

    return SX_CRASH();
end;

return Security;
