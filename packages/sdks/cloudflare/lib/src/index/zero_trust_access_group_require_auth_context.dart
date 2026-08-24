// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupRequireAuthContext {
  /// The ACID of an Authentication context.
  final pulumi.Input<String> acId;
  /// The ID of an Authentication context.
  final pulumi.Input<String> id;
  /// The ID of your Azure identity provider.
  final pulumi.Input<String> identityProviderId;

  /// Creates a new [ZeroTrustAccessGroupRequireAuthContext].
  /// [acId] The ACID of an Authentication context.
  /// [id] The ID of an Authentication context.
  /// [identityProviderId] The ID of your Azure identity provider.
  const ZeroTrustAccessGroupRequireAuthContext({
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

  factory ZeroTrustAccessGroupRequireAuthContext.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequireAuthContext(
      acId: pulumi.Input.fromValue(map['acId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
    );
  }
}
