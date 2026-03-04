// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInsightsDatasetConfigExcludeCloudStorageLocation {
  /// The list of cloud storage locations to exclude in the DatasetConfig.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [GetInsightsDatasetConfigExcludeCloudStorageLocation].
  /// [locations] The list of cloud storage locations to exclude in the DatasetConfig.
  GetInsightsDatasetConfigExcludeCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locations': locations};
  }

  factory GetInsightsDatasetConfigExcludeCloudStorageLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInsightsDatasetConfigExcludeCloudStorageLocation(
      locations: pulumi.Input.fromValue(
        (map['locations'] as List).cast<String>(),
      ),
    );
  }
}
