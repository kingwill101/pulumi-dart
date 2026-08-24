// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyIncludeOkta {
  /// The ID of your Okta identity provider.
  final pulumi.Input<String> identityProviderId;
  /// The name of the Okta group.
  final pulumi.Input<String> name;

  /// Creates a new [AccessPolicyIncludeOkta].
  /// [identityProviderId] The ID of your Okta identity provider.
  /// [name] The name of the Okta group.
  const AccessPolicyIncludeOkta({
    required this.identityProviderId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderId': identityProviderId,
      'name': name,
    };
  }

  factory AccessPolicyIncludeOkta.fromMap(Map<String, dynamic> map) {
    return AccessPolicyIncludeOkta(
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
