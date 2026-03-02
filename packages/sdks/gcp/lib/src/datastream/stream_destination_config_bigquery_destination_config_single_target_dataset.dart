// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset {
  /// Dataset ID in the format projects/{project}/datasets/{dataset_id} or
  /// {project}:{dataset_id}
  final pulumi.Input<String> datasetId;

  /// Creates a new [StreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset].
  /// [datasetId] Dataset ID in the format projects/{project}/datasets/{dataset_id} or
  StreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
    };
  }

  factory StreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset.fromMap(Map<String, dynamic> map) {
    return StreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset(
      datasetId: (map['datasetId'] as String).input(),
    );
  }
}

