// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicTransitSiteLanNat {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String?>? staticPrefix;

  /// Creates a new [MagicTransitSiteLanNat].
  /// [staticPrefix] A valid CIDR notation representing an IP range.
  const MagicTransitSiteLanNat({
    this.staticPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'staticPrefix': ?staticPrefix,
    };
  }

  factory MagicTransitSiteLanNat.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteLanNat(
      staticPrefix: (() { final guardedValue = map['staticPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
