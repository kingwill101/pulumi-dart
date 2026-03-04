// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMultiRegionSetting {
  /// System-generated unique id for the multi-region Service.
  final pulumi.Input<String> multiRegionId;

  /// The list of regions to deploy the multi-region Service.
  final pulumi.Input<List<String>> regions;

  /// Creates a new [GetServiceMultiRegionSetting].
  /// [multiRegionId] System-generated unique id for the multi-region Service.
  /// [regions] The list of regions to deploy the multi-region Service.
  GetServiceMultiRegionSetting({
    required this.multiRegionId,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multiRegionId': multiRegionId,
      'regions': regions,
    };
  }

  factory GetServiceMultiRegionSetting.fromMap(Map<String, dynamic> map) {
    return GetServiceMultiRegionSetting(
      multiRegionId: pulumi.Input.fromValue(map['multiRegionId'] as String),
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
    );
  }
}
