// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteLansResultNat {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> staticPrefix;

  /// Creates a new [GetMagicTransitSiteLansResultNat].
  /// [staticPrefix] A valid CIDR notation representing an IP range.
  const GetMagicTransitSiteLansResultNat({
    required this.staticPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'staticPrefix': staticPrefix,
    };
  }

  factory GetMagicTransitSiteLansResultNat.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLansResultNat(
      staticPrefix: pulumi.Input.fromValue(map['staticPrefix'] as String),
    );
  }
}
