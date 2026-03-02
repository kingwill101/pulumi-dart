// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount {
  /// (Optional)
  final pulumi.Input<String>? email;
  /// (Optional)
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount].
  /// [email] (Optional)
  /// [scopes] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount({
    this.email,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'scopes': ?scopes,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount(
      email: map['email'] == null ? null : (map['email'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
    );
  }
}

