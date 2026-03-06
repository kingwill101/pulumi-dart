// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAwsAccessRole {
  /// The user’s AWS IAM Role that trusts the Google-owned AWS IAM user Connection.
  final pulumi.Input<String> iamRoleId;
  /// (Output)
  /// A unique Google-owned and Google-generated identity for the Connection. This identity will be used to access the user's AWS IAM Role.
  final pulumi.Input<String>? identity;

  /// Creates a new [ConnectionAwsAccessRole].
  /// [iamRoleId] The user’s AWS IAM Role that trusts the Google-owned AWS IAM user Connection.
  /// [identity] (Output)
  const ConnectionAwsAccessRole({
    required this.iamRoleId,
    this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamRoleId': iamRoleId,
      'identity': ?identity,
    };
  }

  factory ConnectionAwsAccessRole.fromMap(Map<String, dynamic> map) {
    return ConnectionAwsAccessRole(
      iamRoleId: pulumi.Input.fromValue(map['iamRoleId'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

