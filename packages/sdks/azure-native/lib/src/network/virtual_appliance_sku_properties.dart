// ignore_for_file: unused_element, unnecessary_cast


/// Network Virtual Appliance Sku Properties.
class VirtualApplianceSkuProperties {
  /// Virtual Appliance Scale Unit.
  final String? bundledScaleUnit;
  /// Virtual Appliance Version.
  final String? marketPlaceVersion;
  /// Virtual Appliance Vendor.
  final String? vendor;

  /// Creates a new [VirtualApplianceSkuProperties].
  /// [bundledScaleUnit] Virtual Appliance Scale Unit.
  /// [marketPlaceVersion] Virtual Appliance Version.
  /// [vendor] Virtual Appliance Vendor.
  VirtualApplianceSkuProperties({
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

  factory VirtualApplianceSkuProperties.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceSkuProperties(
      bundledScaleUnit: map['bundledScaleUnit'] == null ? null : map['bundledScaleUnit'] as String,
      marketPlaceVersion: map['marketPlaceVersion'] == null ? null : map['marketPlaceVersion'] as String,
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
    );
  }
}

