$Title SAGD Optimization - MILNP Algorithm
$Ontext
        This is the main file for the SAGD Water Treatment Optimization using the
        MILNP Optimization.
$Offtext


*INITIALIZE SETS, DATA, and VARIABLE

$include sets_init.gms
$include params_init.gms
$include vars_init.gms

*EQUATIONS

$include minlp_eqns.gms

*SOLVE MINLP

model water /all/ ;

option minlp=baron;
option nlp=baron;
option optcr = 0.01;
option reslim = 86400;

Solve  water using minlp minimization obj ;


$GDXOUT minlp_main.gdx
$UNLOAD
$GDXOUT

execute_unload 'minlp_main.gdx'
