classdef RGBPoint < Point
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (Access = private)
        r double {mustBeReal, mustBeFinite}
        g double {mustBeReal, mustBeFinite}
        b double {mustBeReal, mustBeFinite}
    end
    
    methods
        function obj = RGBPoint(new_r, new_g, new_b, new_x, new_y)
            %Construct an instance of this class
            if nargin == 0
               new_r = 0;
               new_g = 0;
               new_b = 0;
               new_x = 0;
               new_y = 0;
            end
            obj@Point( new_x, new_y);
            obj.r = new_r;
            obj.g = new_g;
            obj.b = new_b;
        end
        
        function dis = RGB_distance( self, other )
            dis = sqrt((self.getr() - other.getr())^2 + (self.getg() - other.getg())^2 + (self.getb() - other.getb())^2);
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
        
    end %End of methods
end

