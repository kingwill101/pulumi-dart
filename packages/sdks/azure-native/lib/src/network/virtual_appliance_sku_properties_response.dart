// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network Virtual Appliance Sku Properties.
class VirtualApplianceSkuPropertiesResponse {
  /// Virtual Appliance Scale Unit.
  final pulumi.Input<String>? bundledScaleUnit;
  /// Virtual Appliance Version.
  final pulumi.Input<String>? marketPlaceVersion;
  /// Virtual Appliance Vendor.
  final pulumi.Input<String>? vendor;

  /// Creates a new [VirtualApplianceSkuPropertiesResponse].
  /// [bundledScaleUnit] Virtual Appliance Scale Unit.
  /// [marketPlaceVersion] Virtual Appliance Version.
  /// [vendor] Virtual Appliance Vendor.
  const VirtualApplianceSkuPropertiesResponse({
    this.bundledScaleUnit,
    this.marketPlaceVersion,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundledScaleUnit': ?bundledScaleUnit,
      'marketPlaceVersion': ?marketPlaceVersion,
      'vendor': ?vendor,
    };
  }

  factory VirtualApplianceSkuPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceSkuPropertiesResponse(
      bundledScaleUnit: (() { final guardedValue = map['bundledScaleUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketPlaceVersion: (() { final guardedValue = map['marketPlaceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
