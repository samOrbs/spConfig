(
SynthDef(\softTuna, { | buff, trigRate = 1, position = 1, gate = 1, att = 1.5, sus = 12.5, rel = 12.5, out_bus = 0,rt=1  |
    var trate, dur, clk, pos, pan,env,sig,rtt;

	buff =

	"/Users/SamuelOrbyConran/Desktop/softTuna/1.wav"

	;

	buff = Buffer.read(s,buff );
	trate = trigRate;
	rtt = rt;
    dur = 12 / trate;
    clk = Impulse.kr(trate);
    pos = LinLin.kr(position,0,127,0,BufDur.kr(buff)) + TRand.kr(0, 0.01, clk);
    pan = WhiteNoise.kr(0.6);
	env = Env.linen(att,sus,rel,1);
   sig = TGrains.ar(2, clk, buff, rtt, pos, dur, pan, 2.0)*EnvGen.kr(env,gate,doneAction:2);
	Out.ar(out_bus,sig);
};
).add;
)

(
SynthDef(\softTuna2, { | buff, trigRate = 1, position = 1, gate = 1, att = 1.5, sus = 12.5, rel = 12.5, out_bus = 1, rt=1  |
    var trate, dur, clk, pos, pan,env,sig;

	buff =

	"/Users/SamuelOrbyConran/Desktop/softTuna/1.wav"

	;

	buff = Buffer.read(s,buff );
	trate = trigRate;
    dur = 12 / trate;
    clk = Impulse.kr(trate);
    pos = LinLin.kr(position,0,127,0,BufDur.kr(buff)) + TRand.kr(0, 0.01, clk);
    pan = WhiteNoise.kr(0.6);
	env = Env.linen(att,sus,rel,1);
   sig = TGrains.ar(2, clk, buff, rt, pos, dur, pan, 2.0)*EnvGen.kr(env,gate,doneAction:2);
	Out.ar(out_bus,sig);
};
).add;
)

(
l = OSCFunc(
	{ arg msg, time, addr, recvPort;
		var pos, att, sus, rel, trigR, rt;
	[msg].postln;
		pos = msg[1];
		att = msg[2];
		sus = msg[3];
		rel = msg[4];
		trigR = msg[5];
		rt = msg[6];
		Synth(\softTuna, [\position,pos,\att,att,\sus,sus,\rel,rel,\trigRate,trigR,\rt,rt]);
		}, '/liveo',recvPort:5005);
)
(
f = OSCFunc(
	{ arg msg, time, addr, recvPort;
		var pos, att, sus, rel, trigR,rt;
	[msg].postln;
		pos = msg[1];
		att = msg[2];
		sus = msg[3];
		rel = msg[4];
		trigR = msg[5];
		rt=msg[6];
		Synth(\softTuna2, [\position,pos,\att,att,\sus,sus,\rel,rel,\trigRate,trigR,\rt,rt]);
		}, '/livea',recvPort:5005);
)

"These are some args:".catArgs(\fish).postln;


