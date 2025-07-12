xpcall(
    function()
        local t9k = tick()
        print(
            [==[    
A-Ditto                                                    
__     __      ____  
\ \   / /      |___ \ 
 \ \ / /         __) |
  \ V /         / __/ 
   \_/         |_____|
   
 _____    _                    _     
|  ___|  | |    __ _    ___   | |__  
| |_     | |   / _` |  / __|  | '_ \ 
|  _|    | |  | (_| |  \__ \  | | | |
|_|      |_|   \__,_|  |___/  |_| |_|                                    
Visit https://a-ditto.xyz/ for more information]==]
        )
        local eR4r = function(wD1)
            task.spawn(
                function()
                    local LocalPlayer = game.Players.LocalPlayer
                    LocalPlayer:Kick(wD1)
                end
            )
            task.wait(9)
            while true do
            end
        end

        if not getfenv().ADittoKey or #getfenv().ADittoKey <= 1 then
            return eR4r("Enter A Valid Key(Error Code: A-Ditto-C COOL)")
        end
        local J7h4kP29m = function(s1dj4)
            local x8Y3qL5n = {
                0xF5,
                0x08,
                0x0C,
                0xD8,
                0xF7,
                0xB0,
                0xF4,
                0x9D,
                0x7C,
                0x8D,
                0x68,
                0x88,
                0x75,
                0xB4,
                0x3A,
                0x17,
                0xF2,
                0x3A,
                0xB4,
                0x43,
                0x1B,
                0x93,
                0x0C,
                0x15,
                0xD3,
                0xA9,
                0xAF,
                0xCF,
                0x79,
                0xF9,
                0x18,
                0xB7,
                0xF9,
                0x4A,
                0x67,
                0x4E,
                0xAD,
                0xFD,
                0x70,
                0x51,
                0x63,
                0xC3,
                0x72,
                0xA4,
                0x77,
                0x0C,
                0x7C,
                0xD5,
                0xB6,
                0x72,
                0xEC,
                0xD3,
                0x09,
                0x64,
                0x72,
                0xEF,
                0x15,
                0x5D,
                0x5F,
                0x20,
                0x2E,
                0x61,
                0x81,
                0x25
            }
            local p3K9j2M4 = {}
            local t6R1v8N7 = 1
            for w5X0yZ4 = 1, #s1dj4, 2 do
                local b7L3sD9 = string.sub(s1dj4, w5X0yZ4, w5X0yZ4 + 1)
                local q2W8eF5 = tonumber(b7L3sD9, 16)
                local m4P6kH1 = x8Y3qL5n[t6R1v8N7]
                local v9J7gT3 = bit32.bxor(q2W8eF5, m4P6kH1)
                p3K9j2M4[#p3K9j2M4 + 1] = string.char(v9J7gT3)
                t6R1v8N7 = (t6R1v8N7 % #x8Y3qL5n) + 1
            end
            local result = ""
            for i = 1, #p3K9j2M4 do
                result = result .. p3K9j2M4[i]
            end
            return result
        end
        local uBqea = function(...)
            local Fh = 0
            for Xb = 1, math.random(1, 3) do
                Fh = math.random()
            end
            return math.random(...)
        end
        local YqU = (function()
            local eLq, NwpS = bit32.rshift, bit32.band
            local oDozT = "0123456789abcdef"
            return function(Gns)
                local vP = string.byte(Gns)
                if not vP then
                    return "00"
                end
                local nCj, Ztq = eLq(vP, 4), NwpS(vP, 15)
                return oDozT:sub(nCj + 1, nCj + 1) .. oDozT:sub(Ztq + 1, Ztq + 1)
            end
        end)()
        local rFvB = function(zYx)
            local QopL = #zYx
            for i = 1, (QopL % 7 == 0 and 2 or (QopL % 7 >= 2 and QopL % 7 or 2)) do
                for sF = 1, QopL do
                    local pM = uBqea(sF, QopL)
                    zYx[sF], zYx[pM] = zYx[pM], zYx[sF]
                end
            end
            return zYx
        end
        local kRta = {}
        for iW = 1, 10 do
            kRta[iW] = {}
            local hHka = kRta[iW]
            for oEw = 1, uBqea(5, 10) do
                hHka.val = uBqea(1, 255)
                hHka.sub = {}
                hHka = hHka.sub
            end
        end
        local tReWq = {}
        local vU = 0
        local yA = uBqea(200, 255) + 25
        for jO = 1, yA do
            tReWq[#tReWq + 1] = uBqea(0, 255)
        end
        rFvB(tReWq)
        local zFv = 0
        for aL = 1, #tReWq do
            zFv = zFv + tReWq[aL]
        end
        local tYp = zFv / #tReWq
        local fLq = 0
        for aL = 1, #tReWq do
            fLq = fLq + (tReWq[aL] - tYp) ^ 2
        end
        local uRk = fLq / #tReWq
        if tYp < 100 or tYp > 150 then
            while true do
            end
        end
        local nBn, bNsT, bNsS = 16, {}, 256 / 16
        for xI = 1, nBn do
            bNsT[xI] = 0
        end
        for xI = 1, #tReWq do
            local vAl = tReWq[xI]
            local bNx = math.floor(vAl / bNsS) + 1
            bNsT[bNx] = bNsT[bNx] + 1
        end
        local eXfQ, cXsq = #tReWq / nBn, 0
        for xI = 1, nBn do
            cXsq = cXsq + (bNsT[xI] - eXfQ) ^ 2 / eXfQ
        end
        if cXsq > 55 or cXsq < 1.5 then
            while true do
            end
        end
        local dFsm = 0
        for xI = 1, #tReWq - 1 do
            dFsm = dFsm + math.abs(tReWq[xI + 1] - tReWq[xI])
        end
        local aVgd = dFsm / (#tReWq - 1)
        if aVgd < 40 or aVgd > 120 then
            while true do
            end
        end
        if uRk < 900 or uRk > 25000 then
            while true do
            end
        end
        local nBv = {a = 1, b = 2, c = 3, d = 4, e = 5}
        local wXo, bA, iOlp, qVp = 0, 0, 0, 0
        for Pz, Ds in pairs(nBv) do
            wXo = wXo + 1
            iOlp = bit32.bxor(iOlp, string.byte(Pz))
            iOlp = bit32.bxor(iOlp, Ds)
        end
        for Pz, Ds in next, nBv do
            bA = bA + 1
            qVp = bit32.bxor(qVp, string.byte(Pz))
            qVp = bit32.bxor(qVp, Ds)
        end
        if wXo ~= 5 or bA ~= 5 or iOlp ~= qVp then
            while true do
            end
        end
        vU = bit32.bxor(vU, bit32.rrotate(iOlp, wXo % 8))
        local lEnke = tReWq[uBqea(1, #tReWq)] % 10 + 5
        for rS = 1, lEnke do
            local wz, qA =
                pcall(
                function()
                    local lT, uT = {v = uBqea(10, 20)}, {v = uBqea(1, 9)}
                    local aM = {
                        __add = function(oB, jB)
                            return oB.v + jB.v
                        end,
                        __len = function(oB)
                            return oB.v * 2
                        end
                    }
                    setmetatable(lT, aM)
                    if (lT + uT) ~= (lT.v + uT.v) or #lT ~= lT.v * 2 then
                        return false
                    end
                    return true
                end
            )
            if not wz or not qA then
                while true do
                end
            end
            local PttBl = {}
            setmetatable(PttBl, {__metatable = "LOCKED"})
            if pcall(setmetatable, PttBl, {}) then
                while true do
                end
            end
        end
        for xI = 1, #tReWq do
            tReWq[xI] = bit32.bxor(tReWq[xI], vU)
        end
        local cSone = 0
        for xI = 1, #tReWq - 1 do
            cSone = bit32.bxor(cSone, tReWq[xI])
        end
        tReWq[#tReWq] = cSone
        local pOs = #tReWq
        local VaL = tReWq[pOs]
        local CAl = 0
        for xI = 1, pOs - 1 do
            CAl = bit32.bxor(CAl, tReWq[xI])
        end
        if CAl ~= VaL then
            while true do
            end
        end
        rFvB(tReWq)
        local fINnC = ""
        for xI = 1, #tReWq do
            fINnC = fINnC .. YqU(string.char(tReWq[xI]))
        end
        local rSfiV = fINnC:sub(1, 50)
        local KlSs = function()
            local tF = function()
                while true do
                end
            end
            local mM = {
                __index = tF,
                __newindex = tF,
                __add = tF,
                __sub = tF,
                __mul = tF,
                __div = tF,
                __mod = tF,
                __pow = tF,
                __unm = tF,
                __len = tF,
                __eq = tF,
                __lt = tF,
                __le = tF,
                __tostring = tF,
                __call = tF,
                __pairs = tF,
                __ipairs = tF,
                __metatable = tF
            }
            return setmetatable({}, mM)
        end
        pcall(
            function()
                for xI = 1, uBqea(5, 15) do
                    local eR, uC = uBqea(1, #kRta), uBqea(1, 20)
                    if kRta[eR] then
                        kRta[eR][uC] = KlSs()
                    end
                end
            end
        )
        local GEnFn = function()
            local fNs = {}
            local sTAtv = uBqea(100, 255)
            local mAGic = uBqea(256, 300)
            local tMPls = {
                function(sElF, nN)
                    sTAtv = bit32.bxor(sTAtv, nN)
                    if sTAtv == mAGic then
                        while true do
                        end
                    end
                    return sTAtv
                end,
                function(sElF, nN)
                    if uBqea(2, 100) == 1 then
                        while true do
                        end
                    end
                    return sElF[uBqea(1, #sElF)](sElF, nN - 1)
                end,
                function(sElF, nN)
                    local dE, mDe = nN, uBqea(5, 10)
                    local function rR(sS, cC)
                        if cC > mDe then
                            return cC
                        end
                        return rR(sS, cC + 1)
                    end
                    return rR(sElF, 0)
                end
            }
            for xI = 1, uBqea(10, 20) do
                fNs[xI] = tMPls[uBqea(1, #tMPls)]
            end
            return fNs
        end
        local NsyFN = GEnFn()
        pcall(
            function()
                for xI = 1, uBqea(10, 20) do
                    NsyFN[uBqea(1, #NsyFN)](NsyFN, uBqea(5, 15))
                end
            end
        )
        local lGfV, eXPEc = nil, "..."
        for xI = 1, uBqea(11, 255) do
            local sPc, kOp =
                pcall(
                function()
                    task.spawn(
                        function()
                            local aA = 1
                            local bB = print
                        end
                    )
                    bB(aA)
                end
            )
            if sPc then
                while true do
                end
            end
        end
        for xI = 1, uBqea(11, 255) do
            local sPc, kOp =
                pcall(
                function()
                end
            )
            if sPc ~= true then
                while true do
                end
            end
        end
        if lGfV then
            while true do
            end
        end
        for xI = 1, uBqea(11, 255) do
            task.spawn(
                function()
                    wKdk = 1
                end
            )
        end
        for xI = 1, uBqea(11, 255) do
            task.spawn(
                function()
                    lGfV = eXPEc
                end
            )
            if lGfV and lGfV ~= eXPEc then
                while true do
                end
            end
        end

        local bA2d = bit32.band
        local bO1r = bit32.bor
        local bX3r = bit32.bxor
        local rL4 = function(vL1, dS2)
            dS2 = dS2 % 32
            return bit32.bor(bit32.lshift(vL1, dS2), bit32.rshift(vL1, 32 - dS2))
        end
        local b2U = function(p1, p2, p3, p4)
            return p1 * 0x1000000 + p2 * 0x10000 + p3 * 0x100 + p4
        end
        local u2B = function(vL1)
            local b4 = vL1 % 256
            vL1 = (vL1 - b4) / 256
            local b3 = vL1 % 256
            vL1 = (vL1 - b3) / 256
            local b2 = vL1 % 256
            local b1 = (vL1 - b2) / 256
            return b1, b2, b3, b4
        end
        local uT3 = function(p1, p2, p3)
            return bX3r(p3, bA2d(p1, bX3r(p2, p3)))
        end
        local uM1 = function(p1, p2, p3)
            return bO1r(bA2d(p1, bO1r(p2, p3)), bA2d(p2, p3))
        end
        local sB7 = string.byte
        local sC8 = string.char
        local sR9 = function(sT1, n)
            if n <= 0 then
                return ""
            end
            local rS1 = ""
            for i = 1, n do
                rS1 = rS1 .. sT1
            end
            return rS1
        end
        local tH6 = function(sT1)
            local rT1 = {}
            local hC2 = ("0123456789abcdef")
            for i = 1, #sT1 do
                local bYt = string.byte(sT1, i)
                local hN1 = bit32.rshift(bYt, 4)
                local lN2 = bit32.band(bYt, 0x0F)
                rT1[#rT1 + 1] = hC2:sub(hN1 + 1, hN1 + 1)
                rT1[#rT1 + 1] = hC2:sub(lN2 + 1, lN2 + 1)
            end
            local hX3 = ""
            for i = 1, #rT1 do
                hX3 = hX3 .. rT1[i]
            end
            return hX3
        end

        local Dka = function(sT1, mD2)
            local fA1 = sC8(0x80)
            local nZ1 = #sT1 + 1 + 8
            local sA2 = sR9(sC8(0), -nZ1 % 64)
            local tA3 = sC8(0, 0, 0, 0, u2B(#sT1 * 8))
            sT1 = sT1 .. fA1 .. sA2 .. tA3
            assert(#sT1 % 64 == 0)
            local h0 = 0x67452301
            local h1 = 0xEFCDAB89
            local h2 = 0x98BADCFE
            local h3 = 0x10325476
            local h4 = 0xC3D2E1F0
            local w = {}
            for cS1 = 1, #sT1, 64 do
                local uS2 = cS1
                for i = 0, 15 do
                    w[i] = b2U(sB7(sT1, uS2, uS2 + 3))
                    uS2 = uS2 + 4
                end
                for i = 16, 79 do
                    w[i] = rL4(bX3r(w[i - 3], w[i - 8], w[i - 14], w[i - 16]), 1)
                end
                local a = h0
                local b = h1
                local c = h2
                local d = h3
                local e = h4
                for i = 0, 79 do
                    local f
                    local k
                    if i <= 19 then
                        f = uT3(b, c, d)
                        k = 0x5A827999
                    elseif i <= 39 then
                        f = bX3r(b, c, d)
                        k = 0x6ED9EBA1
                    elseif i <= 59 then
                        f = uM1(b, c, d)
                        k = 0x8F1BBCDC
                    else
                        f = bX3r(b, c, d)
                        k = 0xCA62C1D6
                    end
                    local tM1 = (rL4(a, 5) + f + e + k + w[i]) % 4294967296
                    e = d
                    d = c
                    c = rL4(b, 30)
                    b = a
                    a = tM1
                end
                h0 = (h0 + a) % 4294967296
                h1 = (h1 + b) % 4294967296
                h2 = (h2 + c) % 4294967296
                h3 = (h3 + d) % 4294967296
                h4 = (h4 + e) % 4294967296
            end
            if mD2 == "hex" then
                return tH6(sC8(u2B(h0)) .. sC8(u2B(h1)) .. sC8(u2B(h2)) .. sC8(u2B(h3)) .. sC8(u2B(h4)))
            end
            return sC8(u2B(h0)) .. sC8(u2B(h1)) .. sC8(u2B(h2)) .. sC8(u2B(h3)) .. sC8(u2B(h4))
        end
        local hex_to_binary = function(hex_str)
            local raw =
                (hex_str:gsub(
                "..",
                function(hex)
                    return string.char(tonumber(hex, 16))
                end
            ))
            return raw
        end
        local secure_compare = function(a, b)
            if type(a) ~= "string" or type(b) ~= "string" then
                return false
            end
            local len_a = #a
            local len_b = #b
            local result = bit32.bxor(len_a, len_b)
            for i = 1, len_a do
                local byte_a = string.byte(a, i)
                local byte_b = string.byte(b, i) or 0
                result = bit32.bor(result, bit32.bxor(byte_a, byte_b))
            end
            return result ~= 0
        end

        local xor_with_0x36 = function(c)
            return string.char(bit32.bxor(string.byte(c), 0x36))
        end
        local xor_with_0x5c = function(c)
            return string.char(bit32.bxor(string.byte(c), 0x5c))
        end

        local hmac = function(key, text, hex_output)
            if type(key) ~= "string" then
                while true do
                end
            end
            if type(text) ~= "string" then
                while true do
                end
            end

            if #key > 64 then
                key = Dka(key, "byte")
            end
            key = key .. string.rep("\0", 64 - #key)

            local o_key_pad = key:gsub(".", xor_with_0x5c)
            local i_key_pad = key:gsub(".", xor_with_0x36)

            local inner_hash = Dka(i_key_pad .. text, "byte")

            local final_mode = hex_output and "hex" or "byte"
            return Dka(o_key_pad .. inner_hash, final_mode)
        end

        local hkdf = function(ikm, salt, info, length)
            local HASH_LEN = 20
            local BLOCK_LEN = 64

            salt = salt
            info = info
            if type(length) ~= "number" then
                while true do
                end
            end
            if length > 255 * HASH_LEN then
                while true do
                end
            end

            local prk = hmac(salt, ikm, false)

            local okm = ""
            local T = ""
            local num_blocks = math.ceil(length / HASH_LEN)

            for i = 1, num_blocks do
                local message = T .. info .. string.char(i)
                T = hmac(prk, message, false)
                okm = okm .. T
            end

            return okm:sub(1, length)
        end

        local jS3n
        do
            local escape_map = {
                ['"'] = '\\"',
                ["\\"] = "\\\\",
                ["\b"] = "\\b",
                ["\f"] = "\\f",
                ["\n"] = "\\n",
                ["\r"] = "\\r",
                ["\t"] = "\\t"
            }

            local escape_str = function(s)
                return '"' .. s:gsub('["\\\b\f\n\r\t]', escape_map) .. '"'
            end

            local is_array = function(t)
                if next(t) == nil then
                    return true
                end
                local i = 0
                for _ in pairs(t) do
                    i = i + 1
                end
                return #t == i and #t > 0
            end

            local encode_value

            local encode_array = function(t)
                local parts = {}
                for i = 1, #t do
                    parts[i] = encode_value(t[i])
                end
                return "[" .. table.concat(parts, ",") .. "]"
            end

            local encode_object = function(t)
                local parts = {}
                for k, v in pairs(t) do
                    if type(k) ~= "string" then
                        while true do
                        end
                    end
                    table.insert(parts, escape_str(k) .. ":" .. encode_value(v))
                end
                return "{" .. table.concat(parts, ",") .. "}"
            end

            encode_value = function(v)
                local v_type = type(v)
                if v_type == "string" then
                    return escape_str(v)
                elseif v_type == "number" then
                    if v ~= v or v == math.huge or v == -math.huge then
                        return "null"
                    end
                    return tostring(v)
                elseif v_type == "boolean" then
                    return tostring(v)
                elseif v_type == "nil" then
                    return "null"
                elseif v_type == "table" then
                    if is_array(v) then
                        return encode_array(v)
                    else
                        return encode_object(v)
                    end
                else
                    while true do
                    end
                end
            end

            jS3n = function(tA1)
                return encode_value(tA1)
            end
        end

        local jS8d
        do
            local b_or = bit32 and bit32.bor or function(a, b)
                    return a + b
                end
            local b_and = bit32 and bit32.band or function(a, b)
                    local r, p = 0, 1
                    while a > 0 and b > 0 do
                        if a % 2 == 1 and b % 2 == 1 then
                            r = r + p
                        end
                        a, b, p = (a - a % 2) / 2, (b - b % 2) / 2, p * 2
                    end
                    return r
                end
            local b_rshift = bit32 and bit32.rshift or function(a, n)
                    return math.floor(a / (2 ^ n))
                end

            local s, i
            local parse_value

            local utf8_char = function(code)
                if code <= 0x7F then
                    return string.char(code)
                elseif code <= 0x7FF then
                    return string.char(b_or(0xC0, b_rshift(code, 6)), b_or(0x80, b_and(code, 0x3F)))
                elseif code <= 0xFFFF then
                    return string.char(
                        b_or(0xE0, b_rshift(code, 12)),
                        b_or(0x80, b_and(b_rshift(code, 6), 0x3F)),
                        b_or(0x80, b_and(code, 0x3F))
                    )
                elseif code <= 0x10FFFF then
                    return string.char(
                        b_or(0xF0, b_rshift(code, 18)),
                        b_or(0x80, b_and(b_rshift(code, 12), 0x3F)),
                        b_or(0x80, b_and(b_rshift(code, 6), 0x3F)),
                        b_or(0x80, b_and(code, 0x3F))
                    )
                else
                    return "?"
                end
            end

            local parse_error = function(msg)
                while true do
                end
            end

            local skip_whitespace = function()
                while s:match("^%s", i) do
                    i = i + 1
                end
            end

            local expect_char = function(char)
                skip_whitespace()
                if s:sub(i, i) == char then
                    i = i + 1
                    return true
                end
                return false
            end

            local parse_string = function()
                i = i + 1
                local str = ""
                while i <= #s do
                    local char = s:sub(i, i)
                    if char == '"' then
                        i = i + 1
                        return str
                    elseif char == "\\" then
                        i = i + 1
                        local escape = s:sub(i, i)
                        if escape == '"' then
                            str = str .. '"'
                        elseif escape == "\\" then
                            str = str .. "\\"
                        elseif escape == "/" then
                            str = str .. "/"
                        elseif escape == "b" then
                            str = str .. "\b"
                        elseif escape == "f" then
                            str = str .. "\f"
                        elseif escape == "n" then
                            str = str .. "\n"
                        elseif escape == "r" then
                            str = str .. "\r"
                        elseif escape == "t" then
                            str = str .. "\t"
                        elseif escape == "u" then
                            local hex = s:sub(i + 1, i + 4)
                            if not hex:match("^[0-9a-fA-F]{4}$") then
                                parse_error("Invalid unicode escape sequence")
                            end
                            str = str .. utf8_char(tonumber(hex, 16))
                            i = i + 4
                        else
                            parse_error("Invalid escape sequence: \\" .. escape)
                        end
                    else
                        str = str .. char
                    end
                    i = i + 1
                end
                parse_error("Unterminated string")
            end

            local parse_number = function()
                local number_str, _ = s:match("^-?%d+%.?%d*[eE]?[%+%-]?%d*", i)
                if not number_str then
                    parse_error("Invalid number")
                end
                i = i + #number_str
                return tonumber(number_str)
            end

            local parse_object = function()
                local obj = {}
                i = i + 1
                if expect_char("}") then
                    return obj
                end
                while i <= #s do
                    skip_whitespace()
                    if s:sub(i, i) ~= '"' then
                        parse_error("Expected string key")
                    end
                    local key = parse_string()
                    if not expect_char(":") then
                        parse_error("Expected ':' after key")
                    end
                    obj[key] = parse_value()
                    if expect_char("}") then
                        return obj
                    end
                    if not expect_char(",") then
                        parse_error("Expected ',' or '}' in object")
                    end
                end
                parse_error("Unterminated object")
            end

            local parse_array = function()
                local arr = {}
                i = i + 1
                if expect_char("]") then
                    return arr
                end
                while i <= #s do
                    table.insert(arr, parse_value())
                    if expect_char("]") then
                        return arr
                    end
                    if not expect_char(",") then
                        parse_error("Expected ',' or ']' in array")
                    end
                end
                parse_error("Unterminated array")
            end

            parse_value = function()
                skip_whitespace()
                local char = s:sub(i, i)
                if char == "{" then
                    return parse_object()
                elseif char == "[" then
                    return parse_array()
                elseif char == '"' then
                    return parse_string()
                elseif char == "t" then
                    if s:sub(i, i + 3) == "true" then
                        i = i + 4
                        return true
                    end
                elseif char == "f" then
                    if s:sub(i, i + 4) == "false" then
                        i = i + 5
                        return false
                    end
                elseif char == "n" then
                    if s:sub(i, i + 3) == "null" then
                        i = i + 4
                        return nil
                    end
                elseif char:match("[-0-9]") then
                    return parse_number()
                end
                parse_error("Unexpected character: " .. char)
            end

            jS8d = function(sT1)
                if type(sT1) ~= "string" then
                    while true do
                    end
                end
                s, i = sT1, 1
                local result = parse_value()
                skip_whitespace()
                if i <= #s then
                    parse_error("Unexpected characters at the end of input")
                end
                return result
            end
        end

        local P6m, b64D
        do
            local lshift = bit32 and bit32.lshift or function(a, n)
                    return a * (2 ^ n)
                end
            local rshift = bit32 and bit32.rshift or function(a, n)
                    return math.floor(a / (2 ^ n))
                end
            local band = bit32 and bit32.band or function(a, b)
                    local r, p = 0, 1
                    while a > 0 and b > 0 do
                        if a % 2 == 1 and b % 2 == 1 then
                            r = r + p
                        end
                        a, b, p = (a - a % 2) / 2, (b - b % 2) / 2, p * 2
                    end
                    return r
                end
            local bor = bit32 and bit32.bor or function(a, b)
                    return a + b
                end

            local B64URL_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
            local B64URL_DECODE = {}
            for i = 1, 64 do
                B64URL_DECODE[B64URL_CHARS:sub(i, i)] = i - 1
            end

            P6m = function(data)
                local parts = {}
                local len = #data
                for i = 1, len, 3 do
                    local b1, b2, b3 = data:byte(i, i + 2)

                    local n1 = rshift(b1, 2)
                    local n2 = bor(lshift(band(b1, 3), 4), rshift(b2 or 0, 4))
                    table.insert(parts, B64URL_CHARS:sub(n1 + 1, n1 + 1))
                    table.insert(parts, B64URL_CHARS:sub(n2 + 1, n2 + 1))

                    if b2 then
                        local n3 = bor(lshift(band(b2, 15), 2), rshift(b3 or 0, 6))
                        table.insert(parts, B64URL_CHARS:sub(n3 + 1, n3 + 1))
                        if b3 then
                            local n4 = band(b3, 63)
                            table.insert(parts, B64URL_CHARS:sub(n4 + 1, n4 + 1))
                        end
                    end
                end
                local result = ""
                for i = 1, #parts do
                    result = result .. parts[i]
                end
                return result
            end

            b64D = function(data)
                local padding = #data % 4
                if padding > 0 then
                    data = data .. string.rep("=", 4 - padding)
                end

                local parts = {}
                for i = 1, #data, 4 do
                    local c1, c2, c3, c4 = data:sub(i, i + 3):match("(.)(.)(.)(.)")
                    local v1 = B64URL_DECODE[c1]
                    local v2 = B64URL_DECODE[c2]
                    if not v1 or not v2 then
                        while true do
                        end
                    end

                    table.insert(parts, string.char(bor(lshift(v1, 2), rshift(v2, 4))))

                    if c3 ~= "=" then
                        local v3 = B64URL_DECODE[c3]
                        if not v3 then
                            while true do
                            end
                        end
                        table.insert(parts, string.char(bor(lshift(band(v2, 15), 4), rshift(v3, 2))))
                        if c4 ~= "=" then
                            local v4 = B64URL_DECODE[c4]
                            if not v4 then
                                while true do
                                end
                            end
                            table.insert(parts, string.char(bor(lshift(band(v3, 3), 6), v4)))
                        end
                    end
                end
                local result = ""
                for i = 1, #parts do
                    result = result .. parts[i]
                end
                return result
            end
        end
        local b6r =
            J7h4kP29m(
            "c63c3ce8c78790f94bb509bd43870820c3028c742df06e73e79ccbae4cc079d5c02956789bcc156552f14791456d4de0d74adfe3395147d9273f67441b55e243"
        )
        local dK2 = getfenv().ADittoKey
        local rG3 =
            hex_to_binary(
            J7h4kP29m(
                "c33e38bece86c7a51eef0abc118c0e26c30ed0272ca06f21b79197fc41c87980c07302769ece14605bf240c2433b45e08441d8ea3f5610dd213969114c57b51d"
            )
        )
        local cK7 =
            hkdf(
            hex_to_binary(
                J7h4kP29m(
                    "943f68e9c3d2c7a91dbb5fec46d00b22c30d82717ff63e24e19b97aa4ac92c879b28027f98cb126052f642c140684fb084148fe56c07138c276b67144f51b312946c3aeb958697fe4fec0abd4c85082fc559852523a63925e7cb96ab1bc0208fcf72067a98c5466407a744c1156e4cb1d543d9b73b0510de743e68191a07b917"
                )
            ),
            Dka(rSfiV .. hex_to_binary(b6r) .. "ditto" .. rG3, "byte") ..
                hex_to_binary(
                    J7h4kP29m("c53e68e1c680cca548ba5fee16d65b2ec658837428f53b76e791cef74dcc28d5c92e012fcfca4966")
                ),
            hex_to_binary(b6r),
            20
        )

        local eR4r = function(wD1)
            task.spawn(
                function()
                    local LocalPlayer = game.Players.LocalPlayer
                    LocalPlayer:Kick(wD1)
                end
            )
            task.wait(9)
            while true do
            end
        end
        print("Successfully initialized the client")
        local cO8l =
            jS8d(
            request(
                {
                    Url = "https://api.a-ditto.xyz/a-ditto/api/v2/auth/gettoken?pid=" .. b6r .. "&nonce=" .. rSfiV,
                    Method = "POST"
                }
            ).Body
        )
        if cO8l.error then
            eR4r("An unexpected operation(Error Code: A-Ditto-C 1)", true)
        end
        print("MEOW")
        local dI9 = cO8l.tid
        local xG1 = {
            key = dK2,
            nonce = rSfiV,
            token = cO8l.token,
            tid = cO8l.nonce
        }
        local iL2 = hmac(cK7, rSfiV, "hex")
        xG1.sign = iL2
        if
            bb925d2af0a0e6fecf78c540bd523777edc15358871531853985cc7acc10da1c9923bc95bf92313090fadc4c13443ca5c6c2b4ea9f3a90422229a97d7ddf2fe013dd7ad218a0877fc621731d6b3c575b39ae01d092ab975acaad2cab0889dcfe948de05190e83e03a19bcbd0db1dd2f243e58afa2c38f83725a72d3f198a0a1f34ed27cdc89780155dc970131641aa28d92e3e04c63e5f424861ecc0dfbf0c91202e0a60f9160761aa5294e11dbf996cbc78fe45ac7e96a1cb1d0afadcf99734d82de277ca971db6a0044f3080c2caeb8d2dccf814154752b1c53a5915ac8db41617bbb561ca33a578f4c2a5c2707e2e7ed3309371c7aa2e556b2aec84c38c8cc3a67820139d160a21a676e7813f8a70e5f7b55b459c750b726568dbb6d908febb8249b29ec20c491af2e834
         then
            while true do
            end
        end

        local pL3 = P6m(jS3n(xG1))
        local iL2 = pL3
        local sN4 = P6m(hmac(rG3, iL2, false))
        local cO5l = iL2 .. "." .. sN4
        local cO8 =
            request(
            {
                Url = "https://api.a-ditto.xyz/a-ditto/api/v2/auth/luau/init/flash/" .. b6r .. "/" .. cO5l,
                Method = "POST"
            }
        ).Body
        local cO8l, rG6 = cO8:match("^(.-)%.([^%.]+)$")
        if cO8l and rG6 then
        else
            eR4r("An unexpected operation(Error Code: A-Ditto-C 3)" .. cO8, true)
        end
        if secure_compare(hmac(rG3, cO8l, false), b64D(rG6)) then
            eR4r("An unexpected operation(Error Code: A-Ditto-C 4)", true)
        end
        local pL3 = jS8d(b64D(cO8l))
        if
            secure_compare(
                hex_to_binary(pL3.sign),
                hmac(cK7, pL3.nonce .. pL3.code .. pL3.exp .. (pL3.premium and "ditto" or "cool") .. dI9 .. b6r, false)
            )
         then
            eR4r("An unexpected operation(Error Code: A-Ditto-C 5)", true)
        end

        if pL3.code == "A-Ditto-Invalid-D" then
            eR4r("Invalid Key(Error Code: A-Ditto-C Blue Eyes)")
        elseif pL3.code == "A-Ditto-HD-L" then
            eR4r("This key has been linked to another HWID. Please reset(Error Code: A-Ditto-C Stamp On it)")
        elseif pL3.code == "A-Ditto-Exp-H" then
            eR4r("An expired key(Error Code: A-Ditto-C Whiplash)")
        elseif pL3.code == "A-Ditto-Invalid-Count" then
            eR4r("Your key's usage limit has been reached.(Error Code: A-Ditto-C Whiplash)")
        elseif pL3.code == "A-Ditto-Banned-BL" then
            eR4r("Banned(Error Code: A-Ditto-C Hands up)")
        elseif pL3.code == "A-Ditto-Va-B" then
            print("A-Ditto:Authenticated")
            print("A-Ditto: time:" .. (tick() - t9k) .. " s")
            local accesstoken = pL3.token
            local msg = P6m(hmac(cK7, P6m(accesstoken) .. "." .. P6m(dK2 .. b6r) .. rSfiV, false))
            local ditto =
                request(
                {
                    Url = "https://api.a-ditto.xyz/a-ditto/api/v2/auth/luau/group/flash/" ..
                        accesstoken .. "?sign=" .. msg,
                    Method = "POST"
                }
            ).Body
            local cO8l, rG6 = ditto:match("^(.-)%.([^%.]+)$")
            if cO8l and rG6 then
            else
                eR4r("An unexpected operation(Error Code: A-Ditto-C 3 A)" .. cO8, true)
            end
            local pL3a = jS8d(b64D(cO8l))
            if secure_compare(hmac(cK7, cO8l .. pL3a.authid .. rSfiV, false), b64D(rG6)) then
                eR4r("An unexpected operation(Error Code: A-Ditto-C 4 A)", true)
            end
            ADitto_UserGroup = pL3a.data
            ADitto_Premium = pL3.premium
            ADitto_KeyType = pL3.type
            if pL3.type == "count_based" then
                ADitto_Count = pL3.KeyCount
            else
                ADitto_Expire = pL3.exp
            end

            pcall(
                function()
                    bb925d2af0a0e6fecf78c540bd523777edc15358871531853985cc7acc10da1c9923bc95bf92313090fadc4c13443ca5c6c2b4ea9f3a90422229a97d7ddf2fe013dd7ad218a0877fc621731d6b3c575b39ae01d092ab975acaad2cab0889dcfe948de05190e83e03a19bcbd0db1dd2f243e58afa2c38f83725a72d3f198a0a1f34ed27cdc89780155dc970131641aa28d92e3e04c63e5f424861ecc0dfbf0c91202e0a60f9160761aa5294e11dbf996cbc78fe45ac7e96a1cb1d0afadcf99734d82de277ca971db6a0044f3080c2caeb8d2dccf814154752b1c53a5915ac8db41617bbb561ca33a578f4c2a5c2707e2e7ed3309371c7aa2e556b2aec84c38c8cc3a67820139d160a21a676e7813f8a70e5f7b55b459c750b726568dbb6d908febb8249b29ec20c491af2e834 =
                        J7h4kP29m(
                        "bc516ea2a4d3c5da4bd25ed945e06b78a25bd52e42da5f5de4f0e2893d805bffb71b531ae1b502352fac24e14e4b049f8e06839e3d2c3198501c3e675805d8559d657c9f84c4a4c44be307de47e2707faa7bd3754ecb7d43a7fcff9e309b2eff9b20051af9ae4817008527f7276131e5c640da993d0218bd7b1b3b18540dcf41b25956f5bec584ee4dfb5cf81bed7f60ba4ad31723f73b63beccfb8e2bcb20e6c110163bdd924767539627e62d3d24acdc3fa7b66b263e9e743517664727ed4481645699c1f2a6a83ebc45c902d554649c5cd9397cdc21509cf89eab09b76fe18c180f17ee882a2250b91dde18213196fd20bde3450346c254306c544c2ab853b3256a9fc3d295f419de23bc38fd4a7ec609c7764bf46752bcc7f59b389b7e8e8a7d091cdfab13370bac42d7313d32bedc08c1946a0f37c2560417654b17f8478539749a94c899a42eda21e930fa6375c44d87086edf467489c2caa42caf7fe3ce3f2c7afda53e3e2d8a39ed3663299adf23a2963e3725ac446a0e135e07e661c4607e8d90e9a7d729ea21b80fdb7b75c55b84245cbe53668584dd9f37802fde8b1d2621e084130054b133e02e3e45b2e531a09e62090782761e31674a26b85dc3723ea896d49ff40ab51ac14de66945bd53c71059d26b42b0ec98a232a172c0931d091ee5883302198d26d03e4128e4e307b3956f2006ae5738674b7113b41cb170398da2e283e825b55eed1cd50e54c575d9244bf1434abb91c0a10e8c4a828f1c2c04d9ae342822a936ee4f344ae7e92b80955d151a896105384c4d0ddb6cb46b55a8b4dd84c82eef02ff308d7540967bf72c2ad656719ddde6f73bb8568ea824011fc09f3f0910ad2ae0043b0e9ad03aabb5712b1ed738042f43600cc3139b496de983dfbaf50de332f93d845161b952997468c54d669fdadb8534837cf19e723e79e4a7090516ae21ed1a5818a4c305a0b2730643805b1514111c54b069aa4453a9c7f7d9a535c111f044f15e5ea063e0217af57b4fa9cacebd0ab64df08f1c1f08e1ad12012ba71bd4394e31928405a2a65e5c3c824f090577490cf87cb95f7db5bbc8bcc235ef11fd47804064b65ef51a6be74059a1d8ebe21caa2f8490242a16c98e2f041b9c15cb473d11b2ce33bdea7c16058d6c6a37147706d475a04e39bbadd28ef82aef0edd1b83777bcb0ec33373de6a7e8099c68c18b72ef9b4070616c3ae313213ae1dde2d580a99f71b87e765571daa441117546020b54ec167649eaef982b03fec29fa10db4262a10de12a2ad5435d83cfe4be4e9d54e8b02c317fcc96193639ae03ec116e0fe3ef2080a166233395633a67767b37cb5fc27a5abf84e68eaa30cc24b938c46558c071d12e55cc3b4584e6c288158169d0be071322debf433328a110941e7e2da6841e94be792d17de601a10156b0ed36e9c5c59b481d7a0d538d92ee33ef36941c47c870128f867648a8482ae3fcd6cc6cb2e4a1ccccc081e0c8d3dee0f6036bdd01e9ee551221797632f66701f06e2178c5754e0b1c2a2d609c225f234f84d50a65dce3670a05c7b99c6eea9299d47e6b0155524cc8832270bb65ffe20750abdd44aa9fe502940dd7336366b410df769c73948b5c7d980fb3fbe01ec20d66061c274d93448c47622b8f0829e10aa79e2b823103df7b11637109a1cec0d5d33b0"
                    )
                    print("hello world")
                end
            )
        else
            eR4r("Encountered an unknown error(Error Code: A-Ditto-C Earthquake)", true)
        end
    end,
    function()
        local eR4r = function(wD1)
            task.spawn(
                function()
                    local LocalPlayer = game.Players.LocalPlayer
                    LocalPlayer:Kick(wD1)
                end
            )
            task.wait(9)
            while true do
            end
        end
        eR4r("Encountered an unknown error(Error Code: A-Ditto-C NMIXX)")
    end
)
