// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessOrganizationCustomPages {
  /// The uid of the custom page to use when a user is denied access after failing a non-identity rule.
  final pulumi.Input<String?>? forbidden;
  /// The uid of the custom page to use when a user is denied access.
  final pulumi.Input<String?>? identityDenied;

  /// Creates a new [AccessOrganizationCustomPages].
  /// [forbidden] The uid of the custom page to use when a user is denied access after failing a non-identity rule.
  /// [identityDenied] The uid of the custom page to use when a user is denied access.
  const AccessOrganizationCustomPages({
    this.forbidden,
    this.identityDenied,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forbidden': ?forbidden,
      'identityDenied': ?identityDenied,
    };
  }

  factory AccessOrganizationCustomPages.fromMap(Map<String, dynamic> map) {
    return AccessOrganizationCustomPages(
      forbidden: (() { final guardedValue = map['forbidden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityDenied: (() { final guardedValue = map['identityDenied']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
