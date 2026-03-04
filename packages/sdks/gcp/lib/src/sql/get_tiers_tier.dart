// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTiersTier {
  /// The maximum disk size of this tier in bytes.
  final pulumi.Input<int> diskQuota;

  /// The maximum ram usage of this tier in bytes.
  final pulumi.Input<int> ram;

  /// The applicable regions for this tier.
  final pulumi.Input<List<String>> regions;

  /// An identifier for the machine type, for example, db-custom-1-3840.
  final pulumi.Input<String> tier;

  /// Creates a new [GetTiersTier].
  /// [diskQuota] The maximum disk size of this tier in bytes.
  /// [ram] The maximum ram usage of this tier in bytes.
  /// [regions] The applicable regions for this tier.
  /// [tier] An identifier for the machine type, for example, db-custom-1-3840.
  GetTiersTier({
    required this.diskQuota,
    required this.ram,
    required this.regions,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskQuota': diskQuota,
      'ram': ram,
      'regions': regions,
      'tier': tier,
    };
  }

  factory GetTiersTier.fromMap(Map<String, dynamic> map) {
    return GetTiersTier(
      diskQuota: pulumi.Input.fromValue(map['diskQuota'] as int),
      ram: pulumi.Input.fromValue(map['ram'] as int),
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
