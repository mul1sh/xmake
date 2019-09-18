template("tbox.shared")
    add_configfiles("xmake.lua")
    add_configfiles("src/_demo/main.cpp")
    add_configfiles("src/_demo/xmake.lua")
    add_configfiles("src/_library/xmake.lua")
    after_create(function (template)
        os.mv("src/_library", "src/${TARGETNAME}")
        os.mv("src/_demo", "src/${TARGETNAME}_demo")
    end)
