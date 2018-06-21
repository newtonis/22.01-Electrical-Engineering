classdef ClaseGUI < handles 
    properties
         handles;
         
    end
    methods
        function self = ClaseGUI ()
             hfig = hgload('fig.fig');
             
             self.handles = guihandles(hfig)
             movegui(hfig , 'center')
             
             
             
        end
    end
    
end