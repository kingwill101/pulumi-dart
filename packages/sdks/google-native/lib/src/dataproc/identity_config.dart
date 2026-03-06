// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity related configuration, including service account based secure multi-tenancy user mappings.
class IdentityConfig {
  /// Map of user to service account.
  final pulumi.Input<Map<String, String>> userServiceAccountMapping;

  /// Creates a new [IdentityConfig].
  /// [userServiceAccountMapping] Map of user to service account.
  const IdentityConfig({
    required this.userServiceAccountMapping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userServiceAccountMapping': userServiceAccountMapping,
    };
  }

  factory IdentityConfig.fromMap(Map<String, dynamic> map) {
    return IdentityConfig(
      userServiceAccountMapping: pulumi.Input.fromValue((map['userServiceAccountMapping'] as Map).cast<String, String>()),
    );
  }
}

