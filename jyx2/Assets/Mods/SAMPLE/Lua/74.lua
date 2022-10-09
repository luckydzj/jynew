Talk(70, "你去找萨擎苍了吗，感觉你不是他的对手。");
Talk(0, "他已经被我打败了！");
Talk(70, "连萨擎苍你都能打得过，看不出来你这么厉害啊。");
Talk(0, "你看不出来的事还多着呢。");
Talk(70, "萨擎苍真的是杀害莫穿林的凶手吗？");
Talk(0, "萨擎苍确实用了你送给他的紫罂散，在莫穿林的酒里下了毒。");
Talk(70, "都怪我信了萨擎苍的鬼话，他明明是说借紫罂散用于对付蓝隼国，我一心想着还能为渡城武林正派出一份力，谁知却间接害死了莫掌门，哎！");
Talk(0, "你们罂粟谷，不是向来不与武林正派为伍吗？");
Talk(70, "哎，我师傅粟兰性子向来刚烈傲娇，嘴上说着与武林正派为敌，但内心深处其实是向善的。你别看我们罂粟谷长以用毒闻名江湖，但其实还真没干过大奸大邪的事。");
Talk(0, "你说的倒也是，这比起有些外表堂堂君子、内心阴险狡诈的所谓正派人士，不知好了多少倍！");
Talk(70, "哎，也不知道我能为死去的莫掌门做些什么。");
Talk(0, "我察觉到莫穿林的死似乎还没有那么简单，背后或许藏着一个巨大的阴谋，如果佟掌门真的想为渡城出一份力，可以随我一同继续调查究竟。");
Talk(70, "其实能为渡城出力是师傅的心愿，只是她不愿意与外人坦露。竟然有幸结识如此心怀正气的少侠，如果需要帮助的话，随时可以叫我。");
if AskJoin() == true then goto label0 end;
    Talk(0, "罢了。");
    ModifyEvent(-2, -2, -2, -2, 75, -1, -1, -2, -2, -2, -2, -2, -2);
    do return end;
::label0::
    if TeamIsFull() == false then goto label1 end;
        Talk(70, "你的队伍已满，我无法加入。");
        do return end;
::label1::
    Talk(0, "我确实还有未完成的事情，不如就请佟掌门助我一臂之力吧。");
    DarkScence();
    jyx2_ReplaceSceneObject("", "NPC/佟雯", "");
    LightScence();
    Join(70);
    ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
