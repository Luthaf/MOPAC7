      MODULE mxm_I   
      INTERFACE
!...Generated by Pacific-Sierra Research 77to90  4.4G  22:40:54  03/08/06  
      SUBROUTINE mxm (A, NAR, B, NBR, C, NCC) 
      USE vast_kind_param,ONLY: DOUBLE 
      INTEGER, INTENT(IN) :: NAR, NBR, NCC
      REAL(DOUBLE), DIMENSION(NAR,NBR) :: A       
      REAL(DOUBLE), DIMENSION(NBR,NCC) :: B 
      REAL(DOUBLE), DIMENSION(NAR,NCC) :: C 
      END SUBROUTINE  
      END INTERFACE 
      END MODULE 