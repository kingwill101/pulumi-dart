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
  const RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount({
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
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

