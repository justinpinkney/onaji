function drawMatches(matches, distance, featSize)
% matches is nx4, n in features, with x1, y1, x2, y2
    figure
    distance = reshape(distance, featSize);
    imagesc(distance)
    for iFeatures = 1:size(matches, 1)
        line([matches(iFeatures, 2), matches(iFeatures, 4)], ...
                [matches(iFeatures, 1), matches(iFeatures, 3)], ...
                'Marker', 'o', ...
                'Color', 'r', ...
                'MarkerEdgeColor', 'r')
    end
end