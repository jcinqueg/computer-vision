classdef Cluster
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (Access = private)
        point_mat
        center
    end
    
    methods
        function obj = Cluster(center_point)
            %Construct a cluster with nothing but a center point
            if nargin == 0
                obj.point_mat = [];
                obj.center = RGBPoint();
            else
                obj.center = center_point;
            end
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
            r_list = arrayfun( ( @(p) p.getr() ), self.point_mat );
            g_list = arrayfun( ( @(p) p.getg() ), self.point_mat );
            b_list = arrayfun( ( @(p) p.getb() ), self.point_mat );
            avg_point = RGBPoint( mean(r_list), mean(g_list), mean(b_list), -1, -1 );
            min_val = self.point_mat(1).RGB_distance( avg_point );
            point = self.point_mat(1);
            for i = 1:length(dist_array)
                distance = self.point_mat(i).RGB_distance( avg_point );
                if  distance < min_val
                    min_val = distance;
                    point = self.point_mat(i);
                end
            end
            %Return the point value
        end
    end
end

