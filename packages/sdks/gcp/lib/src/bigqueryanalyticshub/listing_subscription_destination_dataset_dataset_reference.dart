// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingSubscriptionDestinationDatasetDatasetReference {
  /// A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  final pulumi.Input<String> datasetId;
  /// The ID of the project containing this dataset.
  final pulumi.Input<String> projectId;

  /// Creates a new [ListingSubscriptionDestinationDatasetDatasetReference].
  /// [datasetId] A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  /// [projectId] The ID of the project containing this dataset.
  ListingSubscriptionDestinationDatasetDatasetReference({
    required this.datasetId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
    };
  }

  factory ListingSubscriptionDestinationDatasetDatasetReference.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionDestinationDatasetDatasetReference(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}

