classdef ClaseGUI < handle
    properties
         handles;
         Clasefig;
         
         res;
         cap;
         mag;
         pha;
         w;
         H;
    end
    methods
        function self = ClaseGUI ()
             hfig = hgload('fig.fig');
             
             self.handles = guihandles(hfig);
             movegui(hfig , 'center');
             
             self.Clasefig = hfig;
             
             set(self.handles.do,'Callback',@self.do_callback);
             set(self.handles.r,'Callback',@self.r_callback);
             set(self.handles.c,'Callback',@self.c_callback);
        end
        
        function do_callback(self , varargin )
            s = tf('s')
            self.H = (s*self.res*self.cap)/(s*self.res*self.cap+1);
            
            [self.mag, self.pha , self.w] = bode(self.H);
            
            self.mag = squeeze(self.mag)
            self.pha = squeeze(self.pha)
            
            semilogx(self.handles.mag , self.w , 20 * log10(self.mag) );
            semilogx(self.handles.pha , self.w , self.pha);
            
        end
        
        
        function r_callback(self , varargin)
            
             self.res = str2double( get(self.handles.r,'String') );
    
        end
        
        function c_callback(self , varargin)
           
            self.cap = str2double( get(self.handles.c,'String') );
            
        end
        
       
    end
    
end