// ignore_for_file: unused_element, unnecessary_cast


/// The purchase SKU for CloudSimple paid resources
class Sku {
  /// The capacity of the SKU
  final String? capacity;
  /// dedicatedCloudNode example: 8 x Ten-Core Intel® Xeon® Processor E5-2640 v4 2.40GHz 25MB Cache (90W); 12 x 64GB PC4-19200 2400MHz DDR4 ECC Registered DIMM, ...
  final String? description;
  /// If the service has different generations of hardware, for the same SKU, then that can be captured here
  final String? family;
  /// The name of the SKU for VMWare CloudSimple Node
  final String name;
  /// The tier of the SKU
  final String? tier;

  /// Creates a new [Sku].
  /// [capacity] The capacity of the SKU
  /// [description] dedicatedCloudNode example: 8 x Ten-Core Intel® Xeon® Processor E5-2640 v4 2.40GHz 25MB Cache (90W); 12 x 64GB PC4-19200 2400MHz DDR4 ECC Registered DIMM, ...
  /// [family] If the service has different generations of hardware, for the same SKU, then that can be captured here
  /// [name] The name of the SKU for VMWare CloudSimple Node
  /// [tier] The tier of the SKU
  Sku({
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

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      capacity: map['capacity'] == null ? null : map['capacity'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

