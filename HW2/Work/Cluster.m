classdef Cluster
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        point_mat
        center
    end
    
    methods
        function obj = Cluster(point)
            %UNTITLED2 Construct an instance of this class
            %   Detailed explanation goes here
            obj.point_mat = [point];
        end
        
        function obj = addRGBPoint(self, new_point)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            self.point_mat = [self.point_mat; new_point];
            obj = self;
        end
    end
end

