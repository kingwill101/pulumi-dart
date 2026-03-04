// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsDatasetConfigExcludeCloudStorageLocations {
  /// The list of cloud storage locations to exclude in the DatasetConfig.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [InsightsDatasetConfigExcludeCloudStorageLocations].
  /// [locations] The list of cloud storage locations to exclude in the DatasetConfig.
  InsightsDatasetConfigExcludeCloudStorageLocations({required this.locations});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locations': locations};
  }

  factory InsightsDatasetConfigExcludeCloudStorageLocations.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightsDatasetConfigExcludeCloudStorageLocations(
      locations: pulumi.Input.fromValue(
        (map['locations'] as List).cast<String>(),
      ),
    );
  }
}
