// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an ordered combination of valid serving configs, which can be used for `PAGE_OPTIMIZATION` recommendations.
class GoogleCloudRetailV2ModelServingConfigListResponse {
  /// Optional. A set of valid serving configs that may be used for `PAGE_OPTIMIZATION`.
  final pulumi.Input<List<String>> servingConfigIds;

  /// Creates a new [GoogleCloudRetailV2ModelServingConfigListResponse].
  /// [servingConfigIds] Optional. A set of valid serving configs that may be used for `PAGE_OPTIMIZATION`.
  GoogleCloudRetailV2ModelServingConfigListResponse({
    required this.servingConfigIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'servingConfigIds': servingConfigIds,
    };
  }

  factory GoogleCloudRetailV2ModelServingConfigListResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2ModelServingConfigListResponse(
      servingConfigIds: ((map['servingConfigIds'] as List).cast<String>()).input(),
    );
  }
}

