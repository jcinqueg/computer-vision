classdef DPoint
    %Identical to RGBPoint except that the values are stored as doubles
    %instead of rounded off integers. Takes up far more space
    %   Primairily used to store centers of clusters as an average instead
    %   of actual points from the image.
    
    properties
        red
        blue
        green
    end
    
    methods
        function obj = DPoint(r, g, b)
            %Constructs a DPoint object with the given variables
            if nargin == 0
                r = -1;
                g = -1;
                b = -1;
            end
            obj.red = r;
            obj.blue = b;
            obj.green = g;
        end
        
        function dis = RGB_distance(self, other)
            %Returns the distance between this and an RGBpoint
            dis = (self.red() - other.getr())^2 + (self.green() - other.getg())^2 + (self.blue() - other.getb())^2;
        end
    end
end

