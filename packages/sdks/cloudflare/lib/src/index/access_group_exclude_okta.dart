// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupExcludeOkta {
  /// The ID of your Okta identity provider.
  final pulumi.Input<String> identityProviderId;
  /// The name of the Okta group.
  final pulumi.Input<String> name;

  /// Creates a new [AccessGroupExcludeOkta].
  /// [identityProviderId] The ID of your Okta identity provider.
  /// [name] The name of the Okta group.
  const AccessGroupExcludeOkta({
    required this.identityProviderId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderId': identityProviderId,
      'name': name,
    };
  }

  factory AccessGroupExcludeOkta.fromMap(Map<String, dynamic> map) {
    return AccessGroupExcludeOkta(
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
