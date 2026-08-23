// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service account.
class ServiceAccountResponseTpuV2alpha1 {
  /// Email address of the service account. If empty, default Compute service account will be used.
  final pulumi.Input<String> email;
  /// The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
  final pulumi.Input<List<String>> scope;

  /// Creates a new [ServiceAccountResponseTpuV2alpha1].
  /// [email] Email address of the service account. If empty, default Compute service account will be used.
  /// [scope] The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
  const ServiceAccountResponseTpuV2alpha1({
    required this.email,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'scope': scope,
    };
  }

  factory ServiceAccountResponseTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponseTpuV2alpha1(
      email: pulumi.Input.fromValue(map['email'] as String),
      scope: pulumi.Input.fromValue((map['scope'] as List).cast<String>()),
    );
  }
}
