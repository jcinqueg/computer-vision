function A = my_filter(I, filter)
%Runs the given filter over the image
    %get height and weidth of image
    org_height=size(I,1);
    org_width=size(I,2);
    %get height and width of filter
    fil_height=size(filter,1);
    fil_width=size(filter,2);
    %create new image to hold output
    new_height = org_height - fil_height + 1;
    new_width = org_width - fil_width + 1;
    A = zeros( new_height , new_width);
    
    %Apply filter to the new image
    for y = 1:new_height
        for x = 1:new_width
            %For each individual point in the image
            result = 0;
            for yadj = 0:fil_height-1
                for xadj = 0:fil_width-1
                    %For each point in the filter
                    result = result + I( y+yadj, x+xadj ) * filter( yadj+1, xadj+1 );
                end
            end
            A(y, x) = result;
        end
    end
    %Return the new image
end