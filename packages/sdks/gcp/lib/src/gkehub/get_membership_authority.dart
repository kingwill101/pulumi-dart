// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMembershipAuthority {
  final pulumi.Input<String> issuer;

  /// Creates a new [GetMembershipAuthority].
  /// [issuer] Required.
  GetMembershipAuthority({
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuer': issuer,
    };
  }

  factory GetMembershipAuthority.fromMap(Map<String, dynamic> map) {
    return GetMembershipAuthority(
      issuer: (map['issuer'] as String).input(),
    );
  }
}

