// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupRequireGsuite {
  /// The email of the Google Workspace group.
  final pulumi.Input<String> email;
  /// The ID of your Google Workspace identity provider.
  final pulumi.Input<String> identityProviderId;

  /// Creates a new [GetZeroTrustAccessGroupRequireGsuite].
  /// [email] The email of the Google Workspace group.
  /// [identityProviderId] The ID of your Google Workspace identity provider.
  const GetZeroTrustAccessGroupRequireGsuite({
    required this.email,
    required this.identityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'identityProviderId': identityProviderId,
    };
  }

  factory GetZeroTrustAccessGroupRequireGsuite.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupRequireGsuite(
      email: pulumi.Input.fromValue(map['email'] as String),
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
    );
  }
}
