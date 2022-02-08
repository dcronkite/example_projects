/*********************************************************;

Include some documentation here.

%RetainOnes(InputData,OutData) ;
**********************************************************/;
%macro RetainOnes(
            InputData  /* The name of input dataset containing 1s and 0s in values column */
          , OutData   /* The name of the output dataset containing only the 1s. */
          ) ;


   %if &InputData = &OutData %then %do ;
     %put PROBLEM: InputData dataset must be different from the OutData dataset.;
     %put PROBLEM: Both parameters are set to "&InputData". ;
     %put PROBLEM: Doing nothing. ;
   %end ;
   %else %do ;

      proc sql ;
         create table &OutData as
         select *
         from &InputData
         where value = 1;
      quit ;

   %end ;
%mend RetainOnes ;
