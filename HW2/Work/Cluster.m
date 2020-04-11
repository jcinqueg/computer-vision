classdef Cluster
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        point_mat
        center
    end
    
    methods
        function obj = Cluster(center_point)
            %UNTITLED2 Construct an instance of this class
            %   Detailed explanation goes here
            obj.center = center_point;
        end
        
        function obj = addRGBPoint(self, new_point)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            self.point_mat = [self.point_mat; new_point];
            obj = self;
        end
        
        function point = new_center(self)
            %Finds the most mean point out of all the points
            %   that have been added to this object.
            x_list = arrayfun( self.point_mat, ( @(p) p.getx() ) );
            y_list = arrayfun( self.point_mat, ( @(p) p.gety() ) );
            
        end
    end
end

