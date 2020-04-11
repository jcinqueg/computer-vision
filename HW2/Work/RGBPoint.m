classdef RGBPoint
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (Access = private)
        r double {mustBeReal, mustBeFinite}
        g double {mustBeReal, mustBeFinite}
        b double {mustBeReal, mustBeFinite}
        x {mustBeInteger}
        y {mustBeInteger}
    end
    
    methods
        function obj = RGBPoint(new_r, new_g, new_b, new_x, new_y)
            %Construct an instance of this class
            obj.r = new_r;
            obj.g = new_g;
            obj.b = new_b;
            obj.x = new_x;
            obj.y = new_y;
        end
        
        function num = getr(self)
            %Returns the r value of the point
            num = self.r;
        end
        
        function num = getg(self)
            %Returns the g value of the point
            num = self.g;
        end
        
        function num = getb(self)
            %Returns the b value of the point
            num = self.b;
        end
        
        function num = getx(self)
            %Returns the x coordinate value of the point
            num = self.x;
        end
        
        function num = gety(self)
            %Returns the y coordinate value of the point
            num = self.y;
        end
    end %End of methods
end

