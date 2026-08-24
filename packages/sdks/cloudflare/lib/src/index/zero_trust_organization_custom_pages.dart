// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustOrganizationCustomPages {
  /// The uid of the custom page to use when a user is denied access after failing a non-identity rule.
  final pulumi.Input<String?>? forbidden;
  /// The uid of the custom page to use when a user is denied access.
  final pulumi.Input<String?>? identityDenied;

  /// Creates a new [ZeroTrustOrganizationCustomPages].
  /// [forbidden] The uid of the custom page to use when a user is denied access after failing a non-identity rule.
  /// [identityDenied] The uid of the custom page to use when a user is denied access.
  const ZeroTrustOrganizationCustomPages({
    this.forbidden,
    this.identityDenied,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forbidden': ?forbidden,
      'identityDenied': ?identityDenied,
    };
  }

  factory ZeroTrustOrganizationCustomPages.fromMap(Map<String, dynamic> map) {
    return ZeroTrustOrganizationCustomPages(
      forbidden: (() { final guardedValue = map['forbidden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityDenied: (() { final guardedValue = map['identityDenied']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
