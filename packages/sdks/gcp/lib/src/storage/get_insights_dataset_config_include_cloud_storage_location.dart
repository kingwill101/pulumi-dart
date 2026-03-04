// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInsightsDatasetConfigIncludeCloudStorageLocation {
  /// The list of cloud storage locations to include in the DatasetConfig.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [GetInsightsDatasetConfigIncludeCloudStorageLocation].
  /// [locations] The list of cloud storage locations to include in the DatasetConfig.
  GetInsightsDatasetConfigIncludeCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locations': locations};
  }

  factory GetInsightsDatasetConfigIncludeCloudStorageLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInsightsDatasetConfigIncludeCloudStorageLocation(
      locations: pulumi.Input.fromValue(
        (map['locations'] as List).cast<String>(),
      ),
    );
  }
}
