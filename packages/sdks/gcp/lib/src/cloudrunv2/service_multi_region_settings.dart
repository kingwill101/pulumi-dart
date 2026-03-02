// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMultiRegionSettings {
  /// (Output)
  /// System-generated unique id for the multi-region Service.
  final pulumi.Input<String>? multiRegionId;
  /// The list of regions to deploy the multi-region Service.
  final pulumi.Input<List<String>>? regions;

  /// Creates a new [ServiceMultiRegionSettings].
  /// [multiRegionId] (Output)
  /// [regions] The list of regions to deploy the multi-region Service.
  ServiceMultiRegionSettings({
    this.multiRegionId,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multiRegionId': ?multiRegionId,
      'regions': ?regions,
    };
  }

  factory ServiceMultiRegionSettings.fromMap(Map<String, dynamic> map) {
    return ServiceMultiRegionSettings(
      multiRegionId: map['multiRegionId'] == null ? null : (map['multiRegionId'] as String).input(),
      regions: map['regions'] == null ? null : ((map['regions'] as List).cast<String>()).input(),
    );
  }
}

