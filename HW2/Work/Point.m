classdef Point
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (Access = private)
        x
        y
    end
    
    methods
        function obj = Point(new_x, new_y)
            %Construct an instance of this class
            obj.x = new_x;
            obj.y = new_y;
        end
        
        function dis = coord_distance( self, other )
            dis = sqrt((self.getx() - other.getx())^2 + (self.gety() - other.gety())^2);
        end
        
        function num = getx(self)
            %Returns the x value of the point
            num = self.x;
        end
        
        function num = gety(self)
            %Returns the x value of the point
            num = self.y;
        end
        
        function b = equals(self, other)
            %Returns true if the x and y values match
            b = (self.getx() == other.getx()) && (self.gety() == other.gety());
        end
    end %End of methods
end

