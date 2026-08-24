// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteLanNat {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> staticPrefix;

  /// Creates a new [GetMagicTransitSiteLanNat].
  /// [staticPrefix] A valid CIDR notation representing an IP range.
  const GetMagicTransitSiteLanNat({
    required this.staticPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'staticPrefix': staticPrefix,
    };
  }

  factory GetMagicTransitSiteLanNat.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLanNat(
      staticPrefix: pulumi.Input.fromValue(map['staticPrefix'] as String),
    );
  }
}
