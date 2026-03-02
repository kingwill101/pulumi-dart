// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The purchase SKU for CloudSimple paid resources
class SkuResponse {
  /// The capacity of the SKU
  final pulumi.Input<String>? capacity;
  /// dedicatedCloudNode example: 8 x Ten-Core Intel® Xeon® Processor E5-2640 v4 2.40GHz 25MB Cache (90W); 12 x 64GB PC4-19200 2400MHz DDR4 ECC Registered DIMM, ...
  final pulumi.Input<String>? description;
  /// If the service has different generations of hardware, for the same SKU, then that can be captured here
  final pulumi.Input<String>? family;
  /// The name of the SKU for VMWare CloudSimple Node
  final pulumi.Input<String> name;
  /// The tier of the SKU
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuResponse].
  /// [capacity] The capacity of the SKU
  /// [description] dedicatedCloudNode example: 8 x Ten-Core Intel® Xeon® Processor E5-2640 v4 2.40GHz 25MB Cache (90W); 12 x 64GB PC4-19200 2400MHz DDR4 ECC Registered DIMM, ...
  /// [family] If the service has different generations of hardware, for the same SKU, then that can be captured here
  /// [name] The name of the SKU for VMWare CloudSimple Node
  /// [tier] The tier of the SKU
  SkuResponse({
    this.capacity,
    this.description,
    this.family,
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'description': ?description,
      'family': ?family,
      'name': name,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: map['capacity'] == null ? null : (map['capacity'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      family: map['family'] == null ? null : (map['family'] as String).input(),
      name: (map['name'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

