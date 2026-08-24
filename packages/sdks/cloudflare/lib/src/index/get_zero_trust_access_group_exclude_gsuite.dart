// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupExcludeGsuite {
  /// The email of the Google Workspace group.
  final pulumi.Input<String> email;
  /// The ID of your Google Workspace identity provider.
  final pulumi.Input<String> identityProviderId;

  /// Creates a new [GetZeroTrustAccessGroupExcludeGsuite].
  /// [email] The email of the Google Workspace group.
  /// [identityProviderId] The ID of your Google Workspace identity provider.
  const GetZeroTrustAccessGroupExcludeGsuite({
    required this.email,
    required this.identityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'identityProviderId': identityProviderId,
    };
  }

  factory GetZeroTrustAccessGroupExcludeGsuite.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupExcludeGsuite(
      email: pulumi.Input.fromValue(map['email'] as String),
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
    );
  }
}
