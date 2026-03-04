// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatasetsDataset {
  /// The id of the dataset.
  final pulumi.Input<String> datasetId;

  /// The friendly name of the dataset.
  final pulumi.Input<String> friendlyName;

  /// User-provided dataset labels, in key/value pairs.
  final pulumi.Input<Map<String, String>> labels;

  /// The geographic location of the dataset.
  final pulumi.Input<String> location;

  /// Creates a new [GetDatasetsDataset].
  /// [datasetId] The id of the dataset.
  /// [friendlyName] The friendly name of the dataset.
  /// [labels] User-provided dataset labels, in key/value pairs.
  /// [location] The geographic location of the dataset.
  GetDatasetsDataset({
    required this.datasetId,
    required this.friendlyName,
    required this.labels,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'friendlyName': friendlyName,
      'labels': labels,
      'location': location,
    };
  }

  factory GetDatasetsDataset.fromMap(Map<String, dynamic> map) {
    return GetDatasetsDataset(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      friendlyName: pulumi.Input.fromValue(map['friendlyName'] as String),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}
