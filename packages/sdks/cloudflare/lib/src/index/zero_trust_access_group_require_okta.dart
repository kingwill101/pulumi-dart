// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupRequireOkta {
  /// The ID of your Okta identity provider.
  final pulumi.Input<String> identityProviderId;
  /// The name of the Okta group.
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustAccessGroupRequireOkta].
  /// [identityProviderId] The ID of your Okta identity provider.
  /// [name] The name of the Okta group.
  const ZeroTrustAccessGroupRequireOkta({
    required this.identityProviderId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderId': identityProviderId,
      'name': name,
    };
  }

  factory ZeroTrustAccessGroupRequireOkta.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequireOkta(
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
