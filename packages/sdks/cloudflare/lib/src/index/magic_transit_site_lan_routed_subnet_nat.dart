// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicTransitSiteLanRoutedSubnetNat {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String?>? staticPrefix;

  /// Creates a new [MagicTransitSiteLanRoutedSubnetNat].
  /// [staticPrefix] A valid CIDR notation representing an IP range.
  const MagicTransitSiteLanRoutedSubnetNat({
    this.staticPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'staticPrefix': ?staticPrefix,
    };
  }

  factory MagicTransitSiteLanRoutedSubnetNat.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteLanRoutedSubnetNat(
      staticPrefix: (() { final guardedValue = map['staticPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
