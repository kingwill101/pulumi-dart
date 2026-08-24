// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustOrganizationCustomPages {
  /// The uid of the custom page to use when a user is denied access after failing a non-identity rule.
  final pulumi.Input<String> forbidden;
  /// The uid of the custom page to use when a user is denied access.
  final pulumi.Input<String> identityDenied;

  /// Creates a new [GetZeroTrustOrganizationCustomPages].
  /// [forbidden] The uid of the custom page to use when a user is denied access after failing a non-identity rule.
  /// [identityDenied] The uid of the custom page to use when a user is denied access.
  const GetZeroTrustOrganizationCustomPages({
    required this.forbidden,
    required this.identityDenied,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forbidden': forbidden,
      'identityDenied': identityDenied,
    };
  }

  factory GetZeroTrustOrganizationCustomPages.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustOrganizationCustomPages(
      forbidden: pulumi.Input.fromValue(map['forbidden'] as String),
      identityDenied: pulumi.Input.fromValue(map['identityDenied'] as String),
    );
  }
}
