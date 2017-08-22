$Title SAGD Optimization - MILNP Algorithm
$Ontext
        This is the main file for the SAGD Water Treatment Optimization using the
        MILNP Optimization.
$Offtext


*INITIALIZE SETS, DATA, and VARIABLES

$include sets_init.gms
$include params_init.gms
$include vars_init.gms

*EQUATIONS

$include minlp_eqns.gms

*SOLVE MINLP

model water /all/ ;

Solve  water using minlp minimization obj ;


