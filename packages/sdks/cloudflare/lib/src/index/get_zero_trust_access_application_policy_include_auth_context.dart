// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyIncludeAuthContext {
  /// The ACID of an Authentication context.
  final pulumi.Input<String> acId;
  /// The ID of an Authentication context.
  final pulumi.Input<String> id;
  /// The ID of your Azure identity provider.
  final pulumi.Input<String> identityProviderId;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyIncludeAuthContext].
  /// [acId] The ACID of an Authentication context.
  /// [id] The ID of an Authentication context.
  /// [identityProviderId] The ID of your Azure identity provider.
  const GetZeroTrustAccessApplicationPolicyIncludeAuthContext({
    required this.acId,
    required this.id,
    required this.identityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acId': acId,
      'id': id,
      'identityProviderId': identityProviderId,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyIncludeAuthContext.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyIncludeAuthContext(
      acId: pulumi.Input.fromValue(map['acId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
    );
  }
}
