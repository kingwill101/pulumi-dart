// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsDatasetConfigIncludeCloudStorageLocations {
  /// The list of cloud storage locations to include in the DatasetConfig.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [InsightsDatasetConfigIncludeCloudStorageLocations].
  /// [locations] The list of cloud storage locations to include in the DatasetConfig.
  InsightsDatasetConfigIncludeCloudStorageLocations({required this.locations});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locations': locations};
  }

  factory InsightsDatasetConfigIncludeCloudStorageLocations.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightsDatasetConfigIncludeCloudStorageLocations(
      locations: pulumi.Input.fromValue(
        (map['locations'] as List).cast<String>(),
      ),
    );
  }
}
