// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteLansResultRoutedSubnetNat {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> staticPrefix;

  /// Creates a new [GetMagicTransitSiteLansResultRoutedSubnetNat].
  /// [staticPrefix] A valid CIDR notation representing an IP range.
  const GetMagicTransitSiteLansResultRoutedSubnetNat({
    required this.staticPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'staticPrefix': staticPrefix,
    };
  }

  factory GetMagicTransitSiteLansResultRoutedSubnetNat.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLansResultRoutedSubnetNat(
      staticPrefix: pulumi.Input.fromValue(map['staticPrefix'] as String),
    );
  }
}
