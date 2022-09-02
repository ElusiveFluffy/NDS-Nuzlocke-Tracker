local function BadgesAppearanceScreen(initialSettings, initialTracker, initialProgram)
    local Frame = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Frame.lua")
    local Box = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Box.lua")
    local Component = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/cOMPONENT.lua")
    local TextLabel = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/TextLabel.lua")
    local ImageLabel = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/ImageLabel.lua")
    local ImageField = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/ImageField.lua")
    local TextField = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/TextField.lua")
    local TextStyle = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/TextStyle.lua")
    local Layout = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Layout.lua")
    local Icon = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Icon.lua")
    local HoverEventListener = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/HoverEventListener.lua")
    local MouseClickEventListener = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/MouseClickEventListener.lua")
    local SettingToggleButton = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/SettingToggleButton.lua")
    local settings = initialSettings
    local tracker = initialTracker
    local program = initialProgram
    local constants = {
        TOP_FRAME_HEIGHT = 89,
        SINGLE_BADGE_ALIGNMENT_FRAME_HEIGHT = 60,
        DOUBLE_ALIGNMENT_HEIGHT = 112,
        HGSS_HEADING_HEIGHT = 62,
        BUTTON_SIZE = 10,
        MAIN_BUTTON_WIDTH = 106,
        MAIN_BUTTON_HEIGHT = 10,
        BOTTOM_FRAME_HEIGHT = 31
    }
    local ui = {}
    local eventListeners = {}
    local self = {}

    local function initEventListeners()
        --eventListeners.goBackClickListener = MouseClickEventListener(ui.controls.goBackButton, onGoBackClick)
    end

    local function onGoBackClick()
        client.SetGameExtraPadding(0,0,Graphics.SIZES.MAIN_SCREEN_PADDING,0)
        program.setCurrentScreens({program.UI_SCREENS.APPEARANCE_OPTIONS_SCREEN})
		program.drawCurrentScreens()
    end

    local function onRadioButtonClick(button)
        button.onClick()
        program.drawCurrentScreens()
    end

    local function initUI()
        ui.controls = {}
        ui.frames = {}
        ui.frames.mainFrame =
            Frame(
            Box(
                {x = Graphics.SIZES.SCREEN_WIDTH + Graphics.SIZES.MAIN_SCREEN_WIDTH + 48, y = 0},
                {width = 0, height = 0},
                nil,
                nil
            ),
            Layout(Graphics.ALIGNMENT_TYPE.VERTICAL, -7),
            nil
        )
        ui.frames.topFrame =
            Frame(
            Box(
                {x = 0, y = 0},
                {
                    width = Graphics.SIZES.MAIN_SCREEN_WIDTH,
                    height = constants.TOP_FRAME_HEIGHT
                },
                "Main background color",
                nil
            ),
            Layout(Graphics.ALIGNMENT_TYPE.VERTICAL, 0, {x = 5, y = 5}),
            ui.frames.mainFrame
        )
        ui.controls.topHeading =
            TextLabel(
            Component(
                ui.frames.topFrame,
                Box(
                    {x = 5, y = 5},
                    {width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN, height = 18},
                    "Top box background color",
                    "Top box border color",
                    false
                )
            ),
            TextField(
                "Badges Appearance",
                {x = 14, y = 1},
                TextStyle(13, Graphics.FONT.DEFAULT_FONT_FAMILY, "Top box text color", "Top box background color")
            )
        )
        ui.frames.HGSSOuterFrame =
            Frame(
            Box(
                {x = 0, y = 0},
                {
                    width = Graphics.SIZES.MAIN_SCREEN_WIDTH,
                    height = constants.HGSS_HEADING_HEIGHT
                },
                "Main background color",
                nil
            ),
            nil,
            ui.frames.mainFrame
        )
        ui.frames.HGSSInnerFrame =
            Frame(
            Box(
                {x = 5, y = 0},
                {
                    width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN,
                    height = constants.HGSS_HEADING_HEIGHT - Graphics.SIZES.BORDER_MARGIN
                },
                "Top box background color",
                "Top box border color"
            ),
            Layout(Graphics.ALIGNMENT_TYPE.VERTICAL,5),
            ui.frames.HGSSOuterFrame
        )
        ui.controls.HGSSHeading =
            TextLabel(
            Component(
                ui.frames.HGSSInnerFrame,
                Box(
                    {x = 5, y = 0},
                    {width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN, height = 16},
                    nil,
                    nil,
                    false
                )
            ),
            TextField(
                "HGSS Settings",
                {x = 34, y = 3},
                TextStyle(11, Graphics.FONT.DEFAULT_FONT_FAMILY, "Top box text color", "Top box background color")
            )
        )
        local HGSS_showBoth = {true, false}
        local settingNames = {"Show both Johto/Kanto", "Show one (will auto swap)"}
        local HGSS_showBoth_frames = {}
        for i = 1, 2, 1 do
            table.insert(
                HGSS_showBoth_frames,
                Frame(
                    Box(
                        {x = 0, y = 0},
                        {
                            width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN,
                            height = constants.MAIN_BUTTON_HEIGHT
                        },
                        nil,
                        nil
                    ),
                    Layout(Graphics.ALIGNMENT_TYPE.HORIZONTAL, 2, {x = 14, y = 0}),
                    ui.frames.HGSSInnerFrame
                )
            )
        end
        for i, state in pairs(HGSS_showBoth) do
            local radioButton =
                SettingToggleButton(
                Component(
                    HGSS_showBoth_frames[i],
                    Box(
                        {x = 0, y = 0},
                        {width = constants.BUTTON_SIZE, height = constants.BUTTON_SIZE},
                        "Top box background color",
                        "Top box border color",
                        true,
                        "Top box background color"
                    )
                ),
                settings.badgesAppearance,
                "SHOW_BOTH_BADGES",
                state,
                true
            )
            table.insert(eventListeners, MouseClickEventListener(radioButton, onRadioButtonClick, radioButton))
            TextLabel(
                Component(
                    HGSS_showBoth_frames[i],
                    Box({x = 0, y = 0}, {width = 32, height = constants.MAIN_BUTTON_HEIGHT}, nil, nil)
                ),
                TextField(
                    settingNames[i],
                    {x = 0, y = 0},
                    TextStyle(
                        Graphics.FONT.DEFAULT_FONT_SIZE,
                        Graphics.FONT.DEFAULT_FONT_FAMILY,
                        "Top box text color",
                        "Top box background color"
                    )
                )
            )
        end
        ui.frames.singleBadgeAlignmentFrame =
            Frame(
            Box(
                {x = 0, y = 0},
                {
                    width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN,
                    height = constants.SINGLE_BADGE_ALIGNMENT_FRAME_HEIGHT
                },
                "Top box background color",
                "Top box border color"
            ),
            Layout(Graphics.ALIGNMENT_TYPE.VERTICAL, 5, {x = 0, y = 0}),
            ui.frames.topFrame
        )
        ui.controls.singleBadgeAlignmentHeading =
            TextLabel(
            Component(
                ui.frames.singleBadgeAlignmentFrame,
                Box(
                    {x = 5, y = 0},
                    {width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN, height = 18},
                    nil,
                    nil,
                    false
                )
            ),
            TextField(
                "Alignment",
                {x = 42, y = 3},
                TextStyle(11, Graphics.FONT.DEFAULT_FONT_FAMILY, "Top box text color", "Top box background color")
            )
        )
        local singleBadgeFrames = {}
        for i = 1, 2, 1 do
            table.insert(
                singleBadgeFrames,
                Frame(
                    Box(
                        {x = 0, y = 0},
                        {
                            width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN,
                            height = constants.MAIN_BUTTON_HEIGHT
                        },
                        nil,
                        nil
                    ),
                    Layout(Graphics.ALIGNMENT_TYPE.HORIZONTAL, 2, {x = 25, y = 0}),
                    ui.frames.singleBadgeAlignmentFrame
                )
            )
        end
        local rows = {{"ABOVE", "BELOW"}, {"RIGHT", "LEFT"}}
        for i, rowPair in pairs(rows) do
            for _, settingName in pairs(rowPair) do
                local radioButton =
                    SettingToggleButton(
                    Component(
                        singleBadgeFrames[i],
                        Box(
                            {x = 0, y = 0},
                            {width = constants.BUTTON_SIZE, height = constants.BUTTON_SIZE},
                            "Top box background color",
                            "Top box border color",
                            true,
                            "Top box background color"
                        )
                    ),
                    settings.badgesAppearance,
                    "SINGLE_BADGE_ALIGNMENT",
                    settingName,
                    true
                )
                table.insert(eventListeners, MouseClickEventListener(radioButton, onRadioButtonClick, radioButton))
                local text = settingName:sub(1, 1):upper() .. settingName:sub(2):lower()
                TextLabel(
                    Component(
                        singleBadgeFrames[i],
                        Box({x = 0, y = 0}, {width = 32, height = constants.MAIN_BUTTON_HEIGHT}, nil, nil)
                    ),
                    TextField(
                        text,
                        {x = 0, y = 0},
                        TextStyle(
                            Graphics.FONT.DEFAULT_FONT_SIZE,
                            Graphics.FONT.DEFAULT_FONT_FAMILY,
                            "Top box text color",
                            "Top box background color"
                        )
                    )
                )
            end
        end
        ui.frames.doubleAlignmentOuterFrame =
            Frame(
            Box(
                {x = 0, y = 0},
                {
                    width = Graphics.SIZES.MAIN_SCREEN_WIDTH,
                    height = constants.DOUBLE_ALIGNMENT_HEIGHT
                },
                "Main background color",
                nil
            ),
            nil,
            ui.frames.mainFrame
        )
        ui.frames.doubleAlignmentInnerFrame =
            Frame(
            Box(
                {x = 5, y = 0},
                {
                    width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN,
                    height = constants.DOUBLE_ALIGNMENT_HEIGHT - Graphics.SIZES.BORDER_MARGIN
                },
                "Top box background color",
                "Top box border color"
            ),
            Layout(Graphics.ALIGNMENT_TYPE.VERTICAL,5),
            ui.frames.doubleAlignmentOuterFrame
        )
        ui.controls.doubleAlignmentHeading =
            TextLabel(
            Component(
                ui.frames.doubleAlignmentInnerFrame,
                Box(
                    {x = 5, y = 0},
                    {width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN, height = 18},
                    nil,
                    nil,
                    false
                )
            ),
            TextField(
                "Double Badge Alignment",
                {x = 7, y = 3},
                TextStyle(11, Graphics.FONT.DEFAULT_FONT_FAMILY, "Top box text color", "Top box background color")
            )
        )
        local doubleBadgeFrames = {}
        for i = 1, 3, 1 do
            table.insert(
                doubleBadgeFrames,
                Frame(
                    Box(
                        {x = 0, y = 0},
                        {
                            width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN,
                            height = constants.MAIN_BUTTON_HEIGHT
                        },
                        nil,
                        nil
                    ),
                    Layout(Graphics.ALIGNMENT_TYPE.HORIZONTAL, 2, {x = 6, y = 0}),
                    ui.frames.doubleAlignmentInnerFrame
                )
            )
        end
        local rows = {{"BOTH_ABOVE", "BOTH_BELOW"}, {"BOTH_RIGHT", "BOTH_LEFT"}, {"LEFT_AND_RIGHT", "ABOVE_AND_BELOW"}}
        for i, rowPair in pairs(rows) do
            for _, settingName in pairs(rowPair) do
                local radioButton =
                    SettingToggleButton(
                    Component(
                        doubleBadgeFrames[i],
                        Box(
                            {x = 0, y = 0},
                            {width = constants.BUTTON_SIZE, height = constants.BUTTON_SIZE},
                            "Top box background color",
                            "Top box border color",
                            true,
                            "Top box background color"
                        )
                    ),
                    settings.badgesAppearance,
                    "DOUBLE_BADGE_ALIGNMENT",
                    settingName,
                    true
                )
                table.insert(eventListeners, MouseClickEventListener(radioButton, onRadioButtonClick, radioButton))
                local text = settingName
                text = text:gsub("_AND_", "/")
                text = text:gsub("_", " ")
                text = text:sub(1, 1):upper() .. text:sub(2):lower()
                TextLabel(
                    Component(
                        doubleBadgeFrames[i],
                        Box({x = 0, y = 0}, {width = 50, height = constants.MAIN_BUTTON_HEIGHT}, nil, nil)
                    ),
                    TextField(
                        text,
                        {x = 0, y = 0},
                        TextStyle(
                            Graphics.FONT.DEFAULT_FONT_SIZE,
                            Graphics.FONT.DEFAULT_FONT_FAMILY,
                            "Top box text color",
                            "Top box background color"
                        )
                    )
                )
            end
        end
        ui.controls.orderHeading =
            TextLabel(
            Component(
                ui.frames.doubleAlignmentInnerFrame,
                Box(
                    {x = 5, y = 0},
                    {width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN, height = 16},
                    nil,
                    nil,
                    false
                )
            ),
            TextField(
                "Double Badge Order",
                {x = 20, y = 2},
                TextStyle(11, Graphics.FONT.DEFAULT_FONT_FAMILY, "Top box text color", "Top box background color")
            )
        )
        ui.frames.orderFrame = Frame(
            Box(
                {x = 0, y = 0},
                {
                    width = Graphics.SIZES.MAIN_SCREEN_WIDTH - 2 * Graphics.SIZES.BORDER_MARGIN,
                    height = constants.MAIN_BUTTON_HEIGHT
                },
                nil,
                nil
            ),
            Layout(Graphics.ALIGNMENT_TYPE.HORIZONTAL, 2, {x = 6, y = 0}),
            ui.frames.doubleAlignmentInnerFrame
        )
        local settingNames = {"JOHTO","KANTO"}
        for _, settingName in pairs(settingNames) do
            local radioButton =
                SettingToggleButton(
                Component(
                    ui.frames.orderFrame,
                    Box(
                        {x = 0, y = 0},
                        {width = constants.BUTTON_SIZE, height = constants.BUTTON_SIZE},
                        "Top box background color",
                        "Top box border color",
                        true,
                        "Top box background color"
                    )
                ),
                settings.badgesAppearance,
                "PRIMARY_BADGE_SET",
                settingName,
                true
            )
            table.insert(eventListeners, MouseClickEventListener(radioButton, onRadioButtonClick, radioButton))
            local text = settingName.." first"
            text = text:sub(1, 1):upper() .. text:sub(2):lower()
            TextLabel(
                Component(
                    ui.frames.orderFrame,
                    Box({x = 0, y = 0}, {width = 50, height = constants.MAIN_BUTTON_HEIGHT}, nil, nil)
                ),
                TextField(
                    text,
                    {x = 0, y = 0},
                    TextStyle(
                        Graphics.FONT.DEFAULT_FONT_SIZE,
                        Graphics.FONT.DEFAULT_FONT_FAMILY,
                        "Top box text color",
                        "Top box background color"
                    )
                )
            )
        end
        ui.frames.bottomFrame =
            Frame(
            Box(
                {x = 0, y = 0},
                {
                    width = Graphics.SIZES.MAIN_SCREEN_WIDTH,
                    height = constants.BOTTOM_FRAME_HEIGHT
                },
                "Main background color",
                nil
            ),
            Layout(Graphics.ALIGNMENT_TYPE.VERTICAL, 0, {x = 5, y = 0}),
            ui.frames.mainFrame
        )
        ui.frames.goBackFrame = Frame(
            Box(
                {x = 0, y = 0},
                {
                    width = Graphics.SIZES.MAIN_SCREEN_WIDTH-2*Graphics.SIZES.BORDER_MARGIN,
                    height = constants.BOTTOM_FRAME_HEIGHT - Graphics.SIZES.BORDER_MARGIN
                },
                "Top box background color",
                "Top box border color"
            ),
            nil,
            ui.frames.bottomFrame
        )
        ui.controls.goBackButton =
        TextLabel(
        Component(
            ui.frames.goBackFrame,
            Box(
                {x = Graphics.SIZES.MAIN_SCREEN_WIDTH - 56, y = 6},
                {width = 40, height = 14},
                "Top box background color",
                "Top box border color",
                true,
                "Top box background color"
            )
        ),
        TextField(
            "Go back",
            {x = 3, y = 1},
            TextStyle(
                Graphics.FONT.DEFAULT_FONT_SIZE,
                Graphics.FONT.DEFAULT_FONT_FAMILY,
                "Top box text color",
                "Top box background color"
            )
        )
    )
        table.insert(eventListeners, MouseClickEventListener(ui.controls.goBackButton, onGoBackClick))
    end

    function self.runEventListeners()
        for _, eventListener in pairs(eventListeners) do
            eventListener.listen()
        end
    end

    function self.show()
        ui.frames.doubleAlignmentOuterFrame.setVisibility(settings.badgesAppearance.SHOW_BOTH_BADGES)
        ui.frames.mainFrame.show()
    end

    initUI()
    return self
end

return BadgesAppearanceScreen
