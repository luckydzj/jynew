if UseItem(184) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(184, -1);
    Talk(65, "．．．这是瑛姑给你的吗？她要你来这做什么？", "talkname65", 0);
    Talk(0, "晚辈想先见到段皇爷．", "talkname0", 1);
    Talk(65, "段皇爷早不在尘世啦，我现下叫作一灯和尚．", "talkname65", 0);
    Talk(0, "原来大师就是段皇爷．", "talkname0", 1);
    Talk(65, "瑛姑叫你拿这手帕来，是要你杀了我吧．", "talkname65", 0);
    Talk(0, "＜好厉害，竟已知道我的来意＞晚辈实有要事相求于她，但她却以弑杀大师为胁，不知大师跟她有什么恩怨？", "talkname0", 1);
    Talk(65, "唉！这中间的情由说来话长．．．．．．．．．这事原由说起来，还是与华山论剑争夺真经一事有关．那一年全真教主王重扬真人得了真经，与他师弟周伯通前来大理．．．一日，周师兄撞见我众妃中的刘贵妃正在练武，周兄生性天真烂漫，两人因而讨论起武学来．．．后来一个教一个学，周师兄血气方刚，贵妃正当妙龄，两人肌肤相接，日久生情，终于闹到了难以收拾的田地．．．．．．．后来我知道这件事后，就命他们结为夫妇．那知周兄大叫大嚷，说他决计不干，然后就离宫而去．．，后来不知如何的受困于桃花岛．．但不久之后逃出来．．那知过了一年半后某一晚，刘贵妃抱着一个小孩哭着来找我，我起身一瞧，只见这孩子伤势很重．．．．待我仔细看后，才知道原来是我对头以为孩子是我的，就打伤他，想逼我大耗元气来医疗他．．．我踌躇良久，见刘贵妃哭的可怜，好几次想开口说要给他医治，但每次想到只要这一出手，日后华山二次论剑，便无望独霸群雄，那九阴真经也就难得手．．．为了此经，我仁爱之心竟然全丧，一直沉吟了大半个时辰，方始决定为他医治．唉！在这大半个时辰之中，我实在是个禽兽不如的卑鄙小人．．．那知我在准备给那孩子医治之时，看见孩子身上裹着一条手帕，正是当初她和周师兄的定情信物，我一怒之下就对她说，这是你们俩生的孩子，我为什么要耗损精力来救活他．．．后来，这孩子就死了．．．这事过后，我不饮不食，苦思了三日三夜，终于大彻大悟，将皇位传给我大儿子，就此出家为僧．．．．", "talkname65", 0);
    Talk(0, "那刘贵妃就是瑛姑吧？", "talkname0", 1);
    Talk(65, "正是．多年来，她一直想为她的孩子报仇．唉！她何必找人来杀我呢，其实我罪孽深重，我天天等她来将匕首刺入我的心中，了结这场罪恶．", "talkname65", 0);
    ModifyEvent(21, 1, -2, -2, 419, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动419脚本。场景21-编号01
    ModifyEvent(-2, -2, -2, -2, 427, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动427脚本。场景47-编号00
    if AskBattle() == true then goto label1 end;
        Talk(0, "想不到这中间的恩怨是如此复杂．唉！又是”情”字．", "talkname0", 1);
        do return end;
::label1::
        AddEthics(-1);
        if TryBattle(68) == false then goto label2 end;
            ModifyEvent(21, 1, -2, -2, 420, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动420脚本。场景21-编号01
            ModifyEvent(-2, -2, -2, -2, -1, -1, -1, 6226, 6226, 6226, -2, -2, -2);--by fanyu|改变贴图。场景47-编号00
			jyx2_SwitchRoleAnimation("NPC/一灯","Assets/BuildSource/AnimationControllers/Dead.controller");
            LightScence();
            AddEthics(-10);
            AddRepute(10);
            do return end;
::label2::
            LightScence();
            Talk(65, "阁下还是回去请瑛姑亲自来动手吧，我会在这等她的．", "talkname65", 0);
do return end;
