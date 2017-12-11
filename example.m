run('setup.m');
net = alexnet;
layer = 'fc7';

proposer = EdgeBoxRegionProposer(10);
extractor = CNNFeatureExtractor(net, layer);
imageDb = ImageDatabase(root, proposer, extractor);

% make a query
query = Query.fromImageRegion(imageDb.Images(1), 1);
imageDb.query(query)