classdef Hist
    %My implementation of an RGB image histogram
    
    properties
        counts
        bin_locations
    end
    
    methods
        function obj = Hist(num_bins, image)
            %Constructs an empty histogram of the image with the set number
            %of bins
            if nargin == 0
                num_bins = 8;
            end
            obj.bin_locations = linspace(0, 255, num_bins+1);
            obj.counts = zeros(num_bins, 3);
            if nargin ~= 0
                for color = 1:3
                    color_mat = image( :, :, color);
                    for i = 1:(num_bins-1)
                        %populate the number of color values in the
                        %specified range
                        obj.counts( i, color) = nnz( color_mat >= obj.bin_locations(i) & color_mat < obj.bin_locations(i+1) );
                    end
                    obj.counts( num_bins, color) = nnz( color_mat >= obj.bin_locations( num_bins ) ); %We do this seperately to account for values that are equal to 255
                end
                %All of bin locations and the count arrays have now been
                %populated
            end
        end
        
        function num = TotalCount(self)
            %Returns the sum of all counts in the histogram. It should be
            %equal to the total number of pixels in the image times 3
            num = sum( self.counts, 'all' );
        end
        
        function num = HistDistance(self, other)
            %Calculates the Euclidean distance between two histograms. Make sure
            %they were initialized with the same number of bins.
            num = sqrt( sum( (double(self.counts) - double(other.counts)).^2, 'all' ) );
        end
    end
end

