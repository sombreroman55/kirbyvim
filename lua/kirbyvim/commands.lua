local function countdown_timer(secs)
    local lualine = require('lualine')
    local popup = require('plenary').popup
    local timer = vim.loop.new_timer()
    local i = secs
    vim.g.countdown_str = nil
    timer:start(0, 1000, vim.schedule_wrap(function()
        local h = math.floor(i / 3600)
        local m = math.floor((i - h * 3600) / 60)
        local s = math.floor(i - h * 3600 - m * 60)
        if 3600 <= i then
            output = string.format('%d:%02d:%02d', h, m, s)
        else
            output = string.format('%d:%02d', m, s)
        end
        vim.g.countdown_str = output
        if i < 0 then
            vim.g.countdown_str = nil
            print('Timer expired!')
            timer:close()
        end
        i = i - 1
    end))
end

vim.api.nvim_create_user_command('CountdownTimer', function(opts)
    local duration = vim.fn.input('How long (sec): ')
    local seconds = tonumber(duration)
    if seconds ~= nil and seconds > 0 then
        countdown_timer(seconds)
    else
        print('Invalid argument. Please pass positive number of seconds')
    end
end, {})
