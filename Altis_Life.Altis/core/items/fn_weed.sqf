/*
	Author:AlaskaVet
*/

//Close inventory
closeDialog ;

//Little hint then wait a litle before starting drugs effects
hint "Winners don't use drugs BUT you do";
sleep 3;

//Activate ppEffects we need
"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;
_smoke = "SmokeShellGreen" createVehicle position player;
if (vehicle player != player) then
    {
        _smoke attachTo [vehicle player, [-0.6,-1,]];
    }
    else
    {
        _smoke attachTo [player, [,-0.1,1.5]];
    };
    
//Let's go for 45secs of effetcs
for "_i" from  to 44 do
{
    "chromAberration" ppEffectAdjust [random 0.25,random 0.25,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
    sleep 1;
};

//Stop effects
"chromAberration" ppEffectAdjust [,,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [,,,];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;