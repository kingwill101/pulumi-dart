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
  const ServiceMultiRegionSettings({
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
      multiRegionId: (() { final guardedValue = map['multiRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
