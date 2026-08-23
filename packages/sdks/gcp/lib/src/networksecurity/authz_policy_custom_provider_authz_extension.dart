// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyCustomProviderAuthzExtension {
  /// A list of references to authorization extensions that will be invoked for requests matching this policy. Limited to 1 custom provider.
  final pulumi.Input<List<String>> resources;

  /// Creates a new [AuthzPolicyCustomProviderAuthzExtension].
  /// [resources] A list of references to authorization extensions that will be invoked for requests matching this policy. Limited to 1 custom provider.
  const AuthzPolicyCustomProviderAuthzExtension({
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resources': resources,
    };
  }

  factory AuthzPolicyCustomProviderAuthzExtension.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyCustomProviderAuthzExtension(
      resources: pulumi.Input.fromValue((map['resources'] as List).cast<String>()),
    );
  }
}
