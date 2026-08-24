// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteLanRoutedSubnetNat {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> staticPrefix;

  /// Creates a new [GetMagicTransitSiteLanRoutedSubnetNat].
  /// [staticPrefix] A valid CIDR notation representing an IP range.
  const GetMagicTransitSiteLanRoutedSubnetNat({
    required this.staticPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'staticPrefix': staticPrefix,
    };
  }

  factory GetMagicTransitSiteLanRoutedSubnetNat.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLanRoutedSubnetNat(
      staticPrefix: pulumi.Input.fromValue(map['staticPrefix'] as String),
    );
  }
}
