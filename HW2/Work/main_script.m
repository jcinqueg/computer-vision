clear;

%Problem Number 1
tower = im2double( imread( 'white-tower', 'png' ) );
imshow( tower )

%k-means segmentation
k = 10
center_arr = random_centers( tower, k )
clusters = arrayfun( @(p) Cluster(p) , center_arr )
for y = 1:size(tower, 1)
    for x = 1:size(tower, 2)
        point = RGBPoint( tower(y,x,1), tower(y,x,2), tower(y,x,3), x, y );
        %Create an array containing all the distances.
        distance = arrayfun( @(clus) clus.getcenter().RGB_distance( point ), clusters );
        
        %Find the minimum element of distance and it's index
        mindex = 1;
        min = distance(1);
        for i = 2:size( clusters, 2 )
            if distance(i) < min
                mindex = i;
                min = distance;
            end
        end
        
        %Add the point into the cluster it is closest to
        clusters( mindex ) = clusters( mindex ).addRGBPoint( point );
    end
end

%clear k center_arr;
