// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheOriginFlexShielding {
  /// Whenever possible, content will be fetched from origin and cached in or
  /// near the specified origin. Best effort.
  /// You must specify exactly one FlexShieldingRegion.
  /// Each value may be one of: `AFRICA_SOUTH1`, `ME_CENTRAL1`.
  final pulumi.Input<String>? flexShieldingRegions;

  /// Creates a new [EdgeCacheOriginFlexShielding].
  /// [flexShieldingRegions] Whenever possible, content will be fetched from origin and cached in or
  const EdgeCacheOriginFlexShielding({
    this.flexShieldingRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flexShieldingRegions': ?flexShieldingRegions,
    };
  }

  factory EdgeCacheOriginFlexShielding.fromMap(Map<String, dynamic> map) {
    return EdgeCacheOriginFlexShielding(
      flexShieldingRegions: (() { final guardedValue = map['flexShieldingRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

