// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterControlPlaneAwsServicesAuthentication {
  /// The Amazon Resource Name (ARN) of the role that the Anthos Multi-Cloud API will assume when managing AWS resources on your account.
  final pulumi.Input<String> roleArn;
  /// Optional. An identifier for the assumed role session. When unspecified, it defaults to `multicloud-service-agent`.
  final pulumi.Input<String>? roleSessionName;

  /// Creates a new [AwsClusterControlPlaneAwsServicesAuthentication].
  /// [roleArn] The Amazon Resource Name (ARN) of the role that the Anthos Multi-Cloud API will assume when managing AWS resources on your account.
  /// [roleSessionName] Optional. An identifier for the assumed role session. When unspecified, it defaults to `multicloud-service-agent`.
  AwsClusterControlPlaneAwsServicesAuthentication({
    required this.roleArn,
    this.roleSessionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
      'roleSessionName': ?roleSessionName,
    };
  }

  factory AwsClusterControlPlaneAwsServicesAuthentication.fromMap(Map<String, dynamic> map) {
    return AwsClusterControlPlaneAwsServicesAuthentication(
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      roleSessionName: (() { final guardedValue = map['roleSessionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

