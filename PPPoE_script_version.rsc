: g l o b a l   I n s t a l l F a i l o v e r   d o = { 
 
 
     : l o c a l   I n s t E t h A b r   [ p i c k   " $ W A N "   7   [ : l e n   " $ W A N " ] ] 
     : l o c a l   I n s t W A N G l o b   [ p i c k   " $ W A N "   0   4 ] 
     : l o c a l   I n s t W a n G l o b   [ p i c k   " $ W A N "   0   4 ] 
     : l o c a l   E t h V a l i d a t e d 
     : l o c a l   F u l l E t h 
 
     : i f   ( [ : t y p e o f   $ W A N ]   =   " n o t h i n g " )   d o = { 
         : p u t   " N o   a r g u m e n t   s u p p l i e d   f o r   W A N ,   a b o r t i n g " 
         : r e t u r n   0 
     } 
 
     : i f   ( [ : t y p e o f   $ P r i m a r y E m a i l ]   =   " n o t h i n g " )   d o = { 
         : p u t   " N o   a r g u m e n t   s u p p l i e d   f o r   P r i m a r y   E m a i l ,   a b o r t i n g " 
         : r e t u r n   0 
     } 
 
     : i f   ( [ : t y p e o f   $ S e c o n d a r y E m a i l ]   =   " n o t h i n g " )   d o = { 
         : p u t   " N o   a r g u m e n t   s u p p l i e d   f o r   S e c o n d a r y E m a i l ,   a b o r t i n g " 
         : r e t u r n   0 
     } 
 
     : i f   ( [ : t y p e o f   $ I P 1 ]   =   " n o t h i n g " )   d o = { 
         : p u t   " N o   a r g u m e n t   s u p p l i e d   f o r   I P 1 ,   a b o r t i n g " 
         : r e t u r n   0 
     }   e l s e = { 
             : i f   ( [ : t y p e o f   [ : t o i p   $ I P 1 ] ]   =   " n i l " )   d o = { 
                 : p u t   " I P 1   d o e s n ' t   s e e m   t o   b e   a   v a l i d   I P ,   a b o r t i n g " 
                 : r e t u r n   0 
             } 
         } 
 
     : i f   ( [ : t y p e o f   $ I P 2 ]   =   " n o t h i n g " )   d o = { 
         : p u t   " N o   a r g u m e n t   s u p p l i e d   f o r   I P 1 ,   a b o r t i n g " 
         : r e t u r n   0 
     }   e l s e = { 
             : i f   ( [ : t y p e o f   [ : t o i p   $ I P 2 ] ]   =   " n i l " )   d o = { 
                 : p u t   " I P 1   d o e s n ' t   s e e m   t o   b e   a   v a l i d   I P ,   a b o r t i n g " 
                 : r e t u r n   0 
             } 
         } 
     
     d o   { 
         [ / i n t e r f a c e   p p p o e - c l i e n t   g e t   [ f i n d   n a m e = " $ W A N " ]   n a m e ] 
     }   o n - e r r o r = { 
         : p u t   " U n a b l e   t o   f i n d   P P P o E   i n t e r f a c e ,   a b o r t i n g " 
         : r e t u r n   0 
     } 
     
     : f o r e a c h   i   i n = [ / i n t e r f a c e   e t h e r n e t   f i n d ]   d o = { 
         : l o c a l   E t h P i c k   [ / i n t e r f a c e   e t h e r n e t   g e t   $ i   n a m e ] 
         : s e t   E t h P i c k   [ : p i c k   " $ E t h P i c k "   5   [ : l e n   " $ W A N " ] ] 
         : i f   ( " $ E t h P i c k "   =   " $ I n s t E t h A b r " )   d o = { 
                 : s e t   F u l l E t h   [ / i n t e r f a c e   e t h e r n e t   g e t   $ i   n a m e ] 
             } 
     } 
     
     : i f   ( [ : t y p e o f   $ F u l l E t h ]   =   " n o t h i n g " )   d o = { 
         : p u t   " U n a b l e   t o   f i n d   E t h e r n e t   i n t e r f a c e ,   a b o r t i n g " 
         : r e t u r n   0 
     } 
 
     /   s y s   s c r i p t   a d d   n a m e = " $ I n s t W A N G l o b - f a i l o v e r "   s o u r c e = " \ 
     \ n l o c a l   p p p o e i f a c e   \ " $ W A N \ " \ 
     \ n l o c a l   e t h i f a c e   \ " $ F u l l E t h \ " \ 
     \ n l o c a l   i n t d o w n \ 
     \ n l o c a l   C u r r e n t I P \ 
     \ n g l o b a l   p r e v i n t s t a t $ I n s t W A N G l o b \ 
     \ n l o c a l   p i n g 1   $ I P 1 \ 
     \ n l o c a l   p i n g 2   $ I P 2 \ 
     \ n l o c a l   e m a i l 1   \ " $ P r i m a r y E m a i l \ " \ 
     \ n l o c a l   e m a i l 2   \ " $ S e c o n d a r y E m a i l \ " \ 
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
     \ n         /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   E t h e r n e t   p o r t   ' \ $ e t h i f a c e '   i s   n o t   c o n n e c t e d \ "   b o d y = \ " E t h e r n e t   p o r t   ' \ $ e t h i f a c e '   i s   n o t   c o n n e c t e d   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s . \ "   s t a r t - t l s = y e s \ 
     \ n         /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   E t h e r n e t   p o r t   ' \ $ e t h i f a c e '   i s   n o t   c o n n e c t e d \ "   b o d y = \ " E t h e r n e t   p o r t   ' \ $ e t h i f a c e '   i s   n o t   c o n n e c t e d   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s . \ "   s t a r t - t l s = y e s \ 
     \ n         : f o r e a c h   i   i n = [ / i p   r o u t e   f i n d     w h e r e   g a t e w a y = \ " \ $ p p p o e i f a c e \ "   s t a t i c ]     d o = { \ 
     \ n                 : i f   ( ( [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ! = \ " \ $ [ : p i c k   \ " \ $ p p p o e i f a c e \ "   0   4 ] \ " . \ " _ I n b o u n d \ " )   | |   ( [ : t y p e o f   [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ]   =   \ " n i l \ " ) )   d o = { \ 
     \ n                     : l o c a l   r o u t e d i s t   [ / i p   r o u t e   g e t   \ $ i   d i s t a n c e ] \ 
     \ n                     : i f   ( \ $ r o u t e d i s t   <   1 0 )   d o = { \ 
     \ n                             / i p   r o u t e   s e t   \ $ i   d i s t a n c e = ( \ $ r o u t e d i s t   *   1 0 ) \ 
     \ n                       }   e l s e = { \ 
     \ n                               : p u t   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   E t h e r n e t   p o r t   ' \ $ e t h i f a c e '   i s   n o t   c o n n e c t e d   -   U n a b l e   t o   a d j u s t   r o u t e s \ "   b o d y = \ " E t h e r n e t   p o r t   ' \ $ e t h i f a c e '   i s   n o t   c o n n e c t e d   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e   &   r o u t e   d i s t a n c e   f o r   ' \ $ p p p o e i f a c e '   i s   g r e a t e r   t h a n   1 0 .   I   d o n ' t   k n o w   w h a t   t o   d o ! \ "   s t a r t - t l s = y e s \ 
     \ n                               /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   E t h e r n e t   p o r t   ' \ $ e t h i f a c e '   i s   n o t   c o n n e c t e d   -   U n a b l e   t o   a d j u s t   r o u t e s \ "   b o d y = \ " E t h e r n e t   p o r t   ' \ $ e t h i f a c e '   i s   n o t   c o n n e c t e d   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e   &   r o u t e   d i s t a n c e   f o r   ' \ $ p p p o e i f a c e '   i s   g r e a t e r   t h a n   1 0 .   I   d o n ' t   k n o w   w h a t   t o   d o ! \ "   s t a r t - t l s = y e s \ 
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
     \ n             /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ "   b o d y = \ " C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e . \ "   s t a r t - t l s = y e s \ 
     \ n             /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ "   b o d y = \ " C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e . \ "   s t a r t - t l s = y e s \ 
     \ n             : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   E t h D o w n \ 
     \ n         } \ 
     \ n } \ 
     \ n \ 
     \ n : i f   ( ( \ $ i n t d o w n   =   \ " P P P o E D o w n \ " )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   =   \ " u p \ " ) )   d o = { \ 
     \ n         : p u t   \ " F a i l o v e r - M o n i t o r :   P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d \ "   b o d y = \ " P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s . \ "   s t a r t - t l s = y e s \ 
     \ n         /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d \ "   b o d y = \ " P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s . \ "   s t a r t - t l s = y e s \ 
     \ n         : f o r e a c h   i   i n = [ / i p   r o u t e   f i n d     w h e r e   g a t e w a y = \ " \ $ p p p o e i f a c e \ "   s t a t i c ]     d o = { \ 
     \ n                 : i f   ( ( [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ! = \ " \ $ [ : p i c k   \ " \ $ p p p o e i f a c e \ "   0   4 ] \ " . \ " _ I n b o u n d \ " )   | |   ( [ : t y p e o f   [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ]   =   \ " n i l \ " ) )   d o = { \ 
     \ n                     : l o c a l   r o u t e d i s t   [ / i p   r o u t e   g e t   \ $ i   d i s t a n c e ] \ 
     \ n                     : i f   ( \ $ r o u t e d i s t   <   1 0 )   d o = { \ 
     \ n                             / i p   r o u t e   s e t   \ $ i   d i s t a n c e = ( \ $ r o u t e d i s t   *   1 0 ) \ 
     \ n                       }   e l s e = { \ 
     \ n                               : p u t   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d   -   U n a b l e   t o   a d j u s t   r o u t e s \ "   b o d y = \ " P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e   &   r o u t e   d i s t a n c e   f o r   ' \ $ p p p o e i f a c e '   i s   g r e a t e r   t h a n   1 0 .   I   d o n ' t   k n o w   w h a t   t o   d o ! \ "   s t a r t - t l s = y e s \ 
     \ n                               /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d   -   U n a b l e   t o   a d j u s t   r o u t e s \ "   b o d y = \ " P P P o E   s e s s i o n   ' \ $ p p p o e i f a c e '   i s   n o t   c o n n e c t e d   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e   &   r o u t e   d i s t a n c e   f o r   ' \ $ p p p o e i f a c e '   i s   g r e a t e r   t h a n   1 0 .   I   d o n ' t   k n o w   w h a t   t o   d o ! \ "   s t a r t - t l s = y e s \ 
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
     \ n             /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ "   b o d y = \ " C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e . \ "   s t a r t - t l s = y e s \ 
     \ n             /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ "   b o d y = \ " C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e . \ "   s t a r t - t l s = y e s \ 
     \ n             : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   P P P o E D o w n \ 
     \ n         } \ 
     \ n } \ 
     \ n \ 
     \ n : i f   ( ( \ $ i n t d o w n   =   \ " p r i v a t e \ " )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   =   \ " u p \ " ) )   d o = { \ 
     \ n         : p u t   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s \ "   b o d y = \ " ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s . \ "   s t a r t - t l s = y e s \ 
     \ n         /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s \ "   b o d y = \ " ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s . \ "   s t a r t - t l s = y e s \ 
     \ n         : f o r e a c h   i   i n = [ / i p   r o u t e   f i n d     w h e r e   g a t e w a y = \ " \ $ p p p o e i f a c e \ "   s t a t i c ]     d o = { \ 
     \ n                 : i f   ( ( [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ! = \ " \ $ [ : p i c k   \ " \ $ p p p o e i f a c e \ "   0   4 ] \ " . \ " _ I n b o u n d \ " )   | |   ( [ : t y p e o f   [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ]   =   \ " n i l \ " ) )   d o = { \ 
     \ n                     : l o c a l   r o u t e d i s t   [ / i p   r o u t e   g e t   \ $ i   d i s t a n c e ] \ 
     \ n                     : i f   ( \ $ r o u t e d i s t   <   1 0 )   d o = { \ 
     \ n                             / i p   r o u t e   s e t   \ $ i   d i s t a n c e = ( \ $ r o u t e d i s t   *   1 0 ) \ 
     \ n                       }   e l s e = { \ 
     \ n                               : p u t   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s -   U n a b l e   t o   a d j u s t   r o u t e s \ "   b o d y = \ " ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e   &   r o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 .   I   d o n ' t   k n o w   w h a t   t o   d o ! . \ "   s t a r t - t l s = y e s \ 
     \ n                               /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s -   U n a b l e   t o   a d j u s t   r o u t e s \ "   b o d y = \ " ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   a   p r i v a t e   I P   a d d r e s s   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e   &   r o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 .   I   d o n ' t   k n o w   w h a t   t o   d o ! . \ "   s t a r t - t l s = y e s                               \ 
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
     \ n             /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ "   b o d y = \ " C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e . \ "   s t a r t - t l s = y e s \ 
     \ n             /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ "   b o d y = \ " C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e . \ "   s t a r t - t l s = y e s \ 
     \ n             : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   p r i v a t e \ 
     \ n         } \ 
     \ n } \ 
     \ n         \ 
     \ n : i f   ( ( \ $ i n t d o w n   =   \ " n o p i n g \ " )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   =   \ " u p \ " ) )   d o = { \ 
     \ n         : p u t   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s   f r o m   \ $ p i n g 1   &   \ $ p i n g 2 ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s   f r o m   \ $ p i n g 1   &   \ $ p i n g 2 ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s \ "   b o d y = \ "   T h e   ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s   f r o m   \ $ p i n g 1   &   \ $ p i n g 2   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s . \ "   s t a r t - t l s = y e s \ 
     \ n         /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s \ "   b o d y = \ "   T h e   ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s   f r o m   \ $ p i n g 1   &   \ $ p i n g 2   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s . \ "   s t a r t - t l s = y e s \ 
     \ n         : f o r e a c h   i   i n = [ / i p   r o u t e   f i n d     w h e r e   g a t e w a y = \ " \ $ p p p o e i f a c e \ "   s t a t i c ]     d o = { \ 
     \ n                 : i f   ( ( [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ! = \ " \ $ [ : p i c k   \ " \ $ p p p o e i f a c e \ "   0   4 ] \ " . \ " _ I n b o u n d \ " )   | |   ( [ : t y p e o f   [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ]   =   \ " n i l \ " ) )   d o = { \ 
     \ n                     : l o c a l   r o u t e d i s t   [ / i p   r o u t e   g e t   \ $ i   d i s t a n c e ] \ 
     \ n                     : i f   ( \ $ r o u t e d i s t   <   1 0 )   d o = { \ 
     \ n                             / i p   r o u t e   s e t   \ $ i   d i s t a n c e = ( \ $ r o u t e d i s t   *   1 0 ) \ 
     \ n                       }   e l s e = { \ 
     \ n                               : p u t   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s -   U n a b l e   t o   a d j u s t   r o u t e s \ "   b o d y = \ " ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e   &   r o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 .   I   d o n ' t   k n o w   w h a t   t o   d o ! . \ "   s t a r t - t l s = y e s \ 
     \ n                               /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s -   U n a b l e   t o   a d j u s t   r o u t e s \ "   b o d y = \ " ' \ $ p p p o e i f a c e '   i n t e r f a c e   i s   n o t   g e t t i n g   r e s p o n s e s   t o   p i n g s   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e   &   r o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   g r e a t e r   t h a n   1 0 .   I   d o n ' t   k n o w   w h a t   t o   d o ! . \ "   s t a r t - t l s = y e s \ 
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
     \ n             /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ "   b o d y = \ " C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e . \ "   s t a r t - t l s = y e s \ 
     \ n             /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n \ "   b o d y = \ " C o n n e c t i o n   s t a t e   f o r   \ $ p p p o e i f a c e   h a s   c h a n g e d   f r o m   \ $ p r e v i n t s t a t $ I n s t W A N G l o b   t o   \ $ i n t d o w n   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e . \ "   s t a r t - t l s = y e s \ 
     \ n             : s e t   p r e v i n t s t a t $ I n s t W A N G l o b   n o p i n g \ 
     \ n         } \ 
     \ n } \ 
     \ n \ 
     \ n \ 
     \ n : i f   ( ( \ $ i n t d o w n   =   f a l s e )   & &   ( \ $ p r e v i n t s t a t $ I n s t W A N G l o b   ! =   \ " u p \ " ) )   d o = { \ 
     \ n         : p u t   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s \ " \ 
     \ n         /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p \ "   b o d y = \ "   T h e   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s . \ "   s t a r t - t l s = y e s \ 
     \ n         /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p \ "   b o d y = \ "   T h e   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e ,   a d j u s t i n g   r o u t e   d i s t a n c e s   a n d   c l e a r i n g   c o n n e c t i o n s . \ "   s t a r t - t l s = y e s \ 
     \ n         : f o r e a c h   i   i n = [ / i p   r o u t e   f i n d     w h e r e   g a t e w a y = \ " \ $ p p p o e i f a c e \ "   s t a t i c ]     d o = { \ 
     \ n                 : i f   ( ( [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ! = \ " \ $ [ : p i c k   \ " \ $ p p p o e i f a c e \ "   0   4 ] \ " . \ " _ I n b o u n d \ " )   | |   ( [ : t y p e o f   [ / i p   r o u t e   g e t   \ $ i   r o u t i n g - m a r k ] ]   =   \ " n i l \ " ) )   d o = { \ 
     \ n                     : l o c a l   r o u t e d i s t   [ / i p   r o u t e   g e t   \ $ i   d i s t a n c e ] \ 
     \ n                     : i f   ( \ $ r o u t e d i s t   > =   1 0 )   d o = { \ 
     \ n                             / i p   r o u t e   s e t   \ $ i   d i s t a n c e = ( \ $ r o u t e d i s t   /   1 0 ) \ 
     \ n                       }   e l s e = { \ 
     \ n                               : p u t   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   l e s s   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               : l o g   i n f o   \ " F a i l o v e r - M o n i t o r :   R o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   l e s s   t h a n   1 0 ,   I   d o n ' t   k n o w   w h a t   t o   d o ! \ " \ 
     \ n                               /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 1   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p -   U n a b l e   t o   a d j u s t   r o u t e s \ "   b o d y = \ " ' \ $ p p p o e i f a c e '   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e   &   r o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   l e s s   t h a n   1 0 .   I   d o n ' t   k n o w   w h a t   t o   d o ! . \ "   s t a r t - t l s = y e s \ 
     \ n                               /   t o o l   e - m a i l   s e n d   t o = \ $ e m a i l 2   s u b j e c t = \ " \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] :   F a i l o v e r - M o n i t o r :   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p -   U n a b l e   t o   a d j u s t   r o u t e s \ "   b o d y = \ " ' \ $ p p p o e i f a c e '   ' \ $ p p p o e i f a c e '   i n t e r f a c e   h a s   g o n e   u p   a t   t h e   ' \ $ [ / s y s t e m   i d e n t i t y   g e t   n a m e ] '   s i t e   &   r o u t e   d i s t a n c e   f o r   \ $ p p p o e i f a c e   i s   l e s s   t h a n   1 0 .   I   d o n ' t   k n o w   w h a t   t o   d o ! . \ "   s t a r t - t l s = y e s \ 
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