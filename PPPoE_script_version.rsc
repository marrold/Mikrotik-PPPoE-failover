#   T h i s   s e m i   w o r k s ,   b u t   h a s   n o   v a l i d a t i o n   a n d   t h e   e t h e r n e t   p o r t   i s   c u r r e n t l y   m a n u a l l y   s e t .   I f   a   w r o n g   a r g u m e n t   i s   p a s s e d ,   i t   w i l l   c r a s h   a n d   b u r n ! 
 
 : g l o b a l   m y F u n c   d o = { 
 
     : p u t   " T h e   a r g u m e n t   s u p p l i e d   f o r   t h e   W A N   l i n k   ( I n s t W A N A r g )   i s   ' $ I n s t W A N A r g ' " 
 
     : l o c a l   I n s t E t h I n t   [ p i c k   " $ I n s t W A N A r g "   7   [ : l e n   " $ I n s t W A N A r g " ] ] 
     : l o c a l   I n s t W A N G l o b   [ p i c k   " $ I n s t W A N A r g "   0   4 ] 
 
     : p u t   " I n s t E t h I n t   i s   $ I n s t E t h I n t " 
     : p u t   " I n s t W A N G l o b   i s   $ I n s t W A N G l o b " 
 
     
     /   s y s   s c r i p t   a d d   n a m e = " $ I n s t W A N G l o b - f a i l o v e r "   s o u r c e = " \ 
     \ n l o c a l   p p p o e i f a c e   \ " $ I n s t W A N A r g \ " \ 
     \ n l o c a l   e t h i f a c e   \ " 0 6   -   P l u s n e t   V D S L \ " \ 
     \ n l o c a l   i n t d o w n \ 
     \ n l o c a l   C u r r e n t I P \ 
     \ n g l o b a l   p r e v i n t s t a t $ I n s t W A N G l o b \ 
     \ n l o c a l   p i n g 1   2 0 8 . 6 7 . 2 2 0 . 2 2 0 \ 
     \ n l o c a l   p i n g 2   8 . 8 . 4 . 4 \ 
     \ n \ 
     \ n i f   ( [ : t y p e o f   \ $ p r e v i n t s t a t $ I n s t W A N G l o b ]   =   \ " n o t h i n g \ " )   d o = { \ 
     \ n       : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   \ " u p \ " \ 
     \ n       } \ 
     \ n \ 
     \ n : d o   { \ 
     \ n     : s e t   C u r r e n t I P   [   / i p   a d d r e s s   g e t   [ f i n d   i n t e r f a c e = \ $ p p p o e i f a c e   d i s a b l e d = n o ]   a d d r e s s   ] \ 
     \ n     : f o r   i   f r o m = (   [ : l e n   \ $ C u r r e n t I P ]   -   1 )   t o = 0   d o = { \ 
     \ n         : i f   (   [ : p i c k   \ $ C u r r e n t I P   \ $ i ]   =   \ " / \ " )   d o = {   : s e t   C u r r e n t I P   [ : p i c k   \ $ C u r r e n t I P   0   \ $ i ]   }   \ 
     \ n         } \ 
     \ n     : s e t   C u r r e n t I P     [ : t o i p   \ $ C u r r e n t I P ] \ 
     \ n \ 
     \ n     : i f   ( ( \ $ C u r r e n t I P   i n   1 7 2 . 1 6 . 0 . 0 / 1 2 )   o r   ( \ $ C u r r e n t I P   i n   1 0 . 0 . 0 . 0 / 8 ) )   d o = { \ 
     \ n         : s e t   i n t d o w n   p r i v a t e \ 
     \ n         : p u t   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   b e e n   a s s i g n e d   a   p r i v a t e   I P \ " \ 
     \ n #         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   b e e n   a s s i g n e d   a   p r i v a t e   I P \ " \ 
     \ n         }   e l s e = { \ 
     \ n                 : i f   ( [ / p i n g   \ $ p i n g 1   i n t e r f a c e = \ $ p p p o e i f a c e   c o u n t = 3   i n t e r v a l = 0 . 5 ]   <   3 )   d o = { \ 
     \ n                     : p u t   \ " F a i l o v e r - M o n i t o r :   P i n g   n o t   r e s p o n d i n g   o n   ' \ $ p p p o e i f a c e '   f o r   \ $ p i n g 1 \ " \ 
     \ n #                     : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   P i n g   r e s p o n d i n g   o n   ' \ $ p p p o e i f a c e '   f o r   \ $ p i n g 1 \ " \ 
     \ n                     : i f   ( [ / p i n g   \ $ p i n g 2   i n t e r f a c e = \ $ p p p o e i f a c e   c o u n t = 3   i n t e r v a l = 0 . 5 ]   <   3 )   d o = { \ 
     \ n                         : p u t   \ " F a i l o v e r - M o n i t o r :   P i n g   n o t   r e s p o n d i n g   o n   ' \ $ p p p o e i f a c e '   f o r   \ $ p i n g 2 \ " \ 
     \ n #                         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   P i n g   n o t   r e s p o n d i n g   o n   ' \ $ p p p o e i f a c e '   f o r   p i n g 2 \ " \ 
     \ n                         : s e t   i n t d o w n   n o p i n g \ 
     \ n                         : i f   ( [ : i n t e r f a c e   p p p o e - c l i e n t   g e t   \ " \ $ p p p o e i f a c e \ "   r u n n i n g ]   =   f a l s e )   d o = { \ 
     \ n                             : p u t   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   P P P o E   i s   n o t   c o n n e c t e d \ " \ 
     \ n #                             : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   P P P o E   i s   n o t   c o n n e c t e d \ " \ 
     \ n                             : s e t   i n t d o w n   P P P o E D o w n \ 
     \ n                         } \ 
     \ n                     }   e l s e = { : s e t   i n t d o w n   f a l s e } \ 
     \ n                 }   e l s e = { : s e t   i n t d o w n   f a l s e } \ 
     \ n             } \ 
     \ n }   o n - e r r o r = { \ 
     \ n         : p u t   \ " F a i l o v e r - M o n i t o r :   U n a b l e   t o   c h e c k   I P   f o r   ' \ $ p p p o e i f a c e ' \ " \ 
     \ n #         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   U n a b l e   t o   c h e c k   I P   f o r   ' \ $ p p p o e i f a c e ' \ " \ 
     \ n         : i f   ( [ : i n t e r f a c e   p p p o e - c l i e n t   g e t   \ " \ $ p p p o e i f a c e \ "   r u n n i n g ]   =   f a l s e )   d o = { \ 
     \ n             : p u t   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   P P P o E   i s   n o t   c o n n e c t e d \ " \ 
     \ n #             : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   P P P o E   i s   n o t   c o n n e c t e d \ " \ 
     \ n             : s e t   i n t d o w n   P P P o E D o w n \ 
     \ n         } \ 
     \ n         : i f   ( [ : i n t e r f a c e   e t h e r n e t     g e t   \ " \ $ e t h i f a c e \ "   r u n n i n g ]   =   f a l s e )   d o = { \ 
     \ n             : p u t   \ " F a i l o v e r - M o n i t o r :   ' \ $ e t h i f a c e '   e t h e r n e t   i s   n o t   c o n n e c t e d \ " \ 
     \ n #             : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   ' \ $ e t h i f a c e '   e t h e r n e t   i s   n o t   c o n n e c t e d \ " \ 
     \ n             : s e t   i n t d o w n   E t h D o w n \ 
     \ n         } \ 
     \ n     } \ 
     \ n \ 
     \ n : p u t   \ " I n t e r f a c e   s t a t u s   i s   \ $ i n t d o w n \ " \ 
     \ n \ 
     \ n # # #   A c t i o n s \ 
     \ n \ 
     \ n : i f   ( ( \ $ i n t d o w n   =   \ " E t h D o w n \ " )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   =   \ " u p \ " ) )   d o = { \ 
     \ n         : p u t   \ " F a i l o v e r - M o n i t o r :   E t h e r n e t   p o r t   ' \ $ e t h i f a c e '   i s   n o t   c o n n e c t e d ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   E t h e r n e t   p o r t   ' \ $ e t h i f a c e '   i s   n o t   c o n n e c t e d ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : f o r e a c h   i   i n = [ / i p   r o u t e   f i n d     w h e r e   g a t e w a y = \ " \ $ p p p o e i f a c e \ "   s t a t i c ]     d o = { \ 
     \ n                 : i f   ( ( [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ! = \ " \ $ [ : p i c k   \ " \ $ p p p o e i f a c e \ "   0   4 ] \ " . \ " _ I n b o u n d \ " )   | |   ( [ : t y p e o f   [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ]   =   \ " n i l \ " ) )   d o = { \ 
     \ n                     : l o c a l   r o u t e d i s t   [ / i p   r o u t e   g e t   \ $ i   d i s t a n c e ] \ 
     \ n                     : i f   ( \ $ r o u t e d i s t   <   1 0 )   d o = { \ 
     \ n                             / i p   r o u t e   s e t   \ $ i   d i s t a n c e = ( \ $ r o u t e d i s t   *   1 0 ) \ 
     \ n                       }   e l s e = { \ 
     \ n                               : p u t   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               } \ 
     \ n                 } \ 
     \ n         } \ 
     \ n         : d e l a y   0 . 5 \ 
     \ n         : f o r e a c h   i   i n = [ / i p   f i r e w a l l   c o n n e c t i o n   f i n d     w h e r e   p r o t o c o l ~ \ " u d p \ " ]     d o = { / i p   f i r e w a l l   c o n n e c t i o n   r e m o v e   \ $ i } \ 
     \ n         : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   E t h D o w n \ 
     \ n         : b e e p   l e n g t h = 0 . 8 \ 
     \ n }   e l s e = { \ 
     \ n         : i f   ( ( \ $ i n t d o w n   =   \ " E t h D o w n \ " )   & &   ( ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   ! =   \ " u p \ " )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   ! =   \ " E t h D o w n \ " ) ) )   d o = { \ 
     \ n             : p u t   \ " F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ " \ 
     \ n             : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ " \ 
     \ n             : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   E t h D o w n \ 
     \ n         } \ 
     \ n } \ 
     \ n \ 
     \ n : i f   ( ( \ $ i n t d o w n   =   \ " P P P o E D o w n \ " )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   =   \ " u p \ " ) )   d o = { \ 
     \ n         : p u t   \ " F a i l o v e r - M o n i t o r :   P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : f o r e a c h   i   i n = [ / i p   r o u t e   f i n d     w h e r e   g a t e w a y = \ " \ $ p p p o e i f a c e \ "   s t a t i c ]     d o = { \ 
     \ n                 : i f   ( ( [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ! = \ " \ $ [ : p i c k   \ " \ $ p p p o e i f a c e \ "   0   4 ] \ " . \ " _ I n b o u n d \ " )   | |   ( [ : t y p e o f   [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ]   =   \ " n i l \ " ) )   d o = { \ 
     \ n                     : l o c a l   r o u t e d i s t   [ / i p   r o u t e   g e t   \ $ i   d i s t a n c e ] \ 
     \ n                     : i f   ( \ $ r o u t e d i s t   <   1 0 )   d o = { \ 
     \ n                             / i p   r o u t e   s e t   \ $ i   d i s t a n c e = ( \ $ r o u t e d i s t   *   1 0 ) \ 
     \ n                       }   e l s e = { \ 
     \ n                               : p u t   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               } \ 
     \ n                 } \ 
     \ n         } \ 
     \ n         : d e l a y   0 . 5 \ 
     \ n         : f o r e a c h   i   i n = [ / i p   f i r e w a l l   c o n n e c t i o n   f i n d     w h e r e   p r o t o c o l ~ \ " u d p \ " ]     d o = { / i p   f i r e w a l l   c o n n e c t i o n   r e m o v e   \ $ i } \ 
     \ n         : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   P P P o E D o w n \ 
     \ n         : b e e p   l e n g t h = 0 . 8 \ 
     \ n }   e l s e = { \ 
     \ n         : i f   ( ( \ $ i n t d o w n   =   \ " P P P o E D o w n \ " )   & &   ( ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   ! =   \ " u p \ " )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   ! =   \ " P P P o E D o w n \ " ) ) )   d o = { \ 
     \ n             : p u t   \ " F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ " \ 
     \ n             : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ " \ 
     \ n             : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   P P P o E D o w n \ 
     \ n         } \ 
     \ n } \ 
     \ n \ 
     \ n : i f   ( ( \ $ i n t d o w n   =   \ " p r i v a t e \ " )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   =   \ " u p \ " ) )   d o = { \ 
     \ n         : p u t   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : f o r e a c h   i   i n = [ / i p   r o u t e   f i n d     w h e r e   g a t e w a y = \ " \ $ p p p o e i f a c e \ "   s t a t i c ]     d o = { \ 
     \ n                 : i f   ( ( [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ! = \ " \ $ [ : p i c k   \ " \ $ p p p o e i f a c e \ "   0   4 ] \ " . \ " _ I n b o u n d \ " )   | |   ( [ : t y p e o f   [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ]   =   \ " n i l \ " ) )   d o = { \ 
     \ n                     : l o c a l   r o u t e d i s t   [ / i p   r o u t e   g e t   \ $ i   d i s t a n c e ] \ 
     \ n                     : i f   ( \ $ r o u t e d i s t   <   1 0 )   d o = { \ 
     \ n                             / i p   r o u t e   s e t   \ $ i   d i s t a n c e = ( \ $ r o u t e d i s t   *   1 0 ) \ 
     \ n                       }   e l s e = { \ 
     \ n                               : p u t   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               } \ 
     \ n                 } \ 
     \ n         } \ 
     \ n         : d e l a y   0 . 5 \ 
     \ n         : f o r e a c h   i   i n = [ / i p   f i r e w a l l   c o n n e c t i o n   f i n d     w h e r e   p r o t o c o l ~ \ " u d p \ " ]     d o = { / i p   f i r e w a l l   c o n n e c t i o n   r e m o v e   \ $ i } \ 
     \ n         : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   p r i v a t e \ 
     \ n         : b e e p   l e n g t h = 0 . 8 \ 
     \ n }   e l s e = { \ 
     \ n         : i f   ( ( \ $ i n t d o w n   =   \ " p r i v a t e \ " )   & &   ( ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   ! =   \ " u p \ " )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   ! =   \ " p r i v a t e \ " ) ) )   d o = { \ 
     \ n             : p u t   \ " F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ " \ 
     \ n             : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ " \ 
     \ n             : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   p r i v a t e \ 
     \ n         } \ 
     \ n } \ 
     \ n         \ 
     \ n : i f   ( ( \ $ i n t d o w n   =   \ " n o p i n g \ " )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   =   \ " u p \ " ) )   d o = { \ 
     \ n         : p u t   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s   f r o m   \ $ p i n g 1   &   \ $ p i n g 2 ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s   f r o m   \ $ p i n g 1   &   \ $ p i n g 2 ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : f o r e a c h   i   i n = [ / i p   r o u t e   f i n d     w h e r e   g a t e w a y = \ " \ $ p p p o e i f a c e \ "   s t a t i c ]     d o = { \ 
     \ n                 : i f   ( ( [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ! = \ " \ $ [ : p i c k   \ " \ $ p p p o e i f a c e \ "   0   4 ] \ " . \ " _ I n b o u n d \ " )   | |   ( [ : t y p e o f   [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ]   =   \ " n i l \ " ) )   d o = { \ 
     \ n                     : l o c a l   r o u t e d i s t   [ / i p   r o u t e   g e t   \ $ i   d i s t a n c e ] \ 
     \ n                     : i f   ( \ $ r o u t e d i s t   <   1 0 )   d o = { \ 
     \ n                             / i p   r o u t e   s e t   \ $ i   d i s t a n c e = ( \ $ r o u t e d i s t   *   1 0 ) \ 
     \ n                       }   e l s e = { \ 
     \ n                               : p u t   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               } \ 
     \ n                 } \ 
     \ n         } \ 
     \ n         : d e l a y   0 . 5 \ 
     \ n         : f o r e a c h   i   i n = [ / i p   f i r e w a l l   c o n n e c t i o n   f i n d     w h e r e   p r o t o c o l ~ \ " u d p \ " ]     d o = { / i p   f i r e w a l l   c o n n e c t i o n   r e m o v e   \ $ i } \ 
     \ n         : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   n o p i n g \ 
     \ n         : b e e p   l e n g t h = 0 . 8 \ 
     \ n }   e l s e = { \ 
     \ n         : i f   ( ( \ $ i n t d o w n   =   \ " n o p i n g \ " )   & &   ( ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   ! =   \ " u p \ " )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   ! =   \ " n o p i n g \ " ) ) )   d o = { \ 
     \ n             : p u t   \ " F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ " \ 
     \ n             : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ " \ 
     \ n             : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   n o p i n g \ 
     \ n         } \ 
     \ n } \ 
     \ n \ 
     \ n \ 
     \ n : i f   ( ( \ $ i n t d o w n   =   f a l s e )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   ! =   \ " u p \ " ) )   d o = { \ 
     \ n         : p u t   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : f o r e a c h   i   i n = [ / i p   r o u t e   f i n d     w h e r e   g a t e w a y = \ " \ $ p p p o e i f a c e \ "   s t a t i c ]     d o = { \ 
     \ n                 : i f   ( ( [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ! = \ " \ $ [ : p i c k   \ " \ $ p p p o e i f a c e \ "   0   4 ] \ " . \ " _ I n b o u n d \ " )   | |   ( [ : t y p e o f   [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ]   =   \ " n i l \ " ) )   d o = { \ 
     \ n                     : l o c a l   r o u t e d i s t   [ / i p   r o u t e   g e t   \ $ i   d i s t a n c e ] \ 
     \ n                     : i f   ( \ $ r o u t e d i s t   > =   1 0 )   d o = { \ 
     \ n                             / i p   r o u t e   s e t   \ $ i   d i s t a n c e = ( \ $ r o u t e d i s t   /   1 0 ) \ 
     \ n                       }   e l s e = { \ 
     \ n                               : p u t   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   l e s s   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   l e s s   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               } \ 
     \ n                 } \ 
     \ n         } \ 
     \ n         : d e l a y   0 . 5 \ 
     \ n         : f o r e a c h   i   i n = [ / i p   f i r e w a l l   c o n n e c t i o n   f i n d     w h e r e   p r o t o c o l ~ \ " u d p \ " ]     d o = { / i p   f i r e w a l l   c o n n e c t i o n   r e m o v e   \ $ i } \ 
     \ n         : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   u p   \ 
     \ n         : b e e p   l e n g t h = 0 . 5 \ 
     \ n         : d e l a y   1 \ 
     \ n         : b e e p   l e n g t h = 0 . 5 \ 
     \ n } " 
 : p u t   " I n s t a l l   c o m p l e t e ! " 
 } 