// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterControlPlaneProxyConfig {
  /// The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  final pulumi.Input<String> secretArn;
  /// The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [AwsClusterControlPlaneProxyConfig].
  /// [secretArn] The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  /// [secretVersion] The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  AwsClusterControlPlaneProxyConfig({
    required this.secretArn,
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretArn': secretArn,
      'secretVersion': secretVersion,
    };
  }

  factory AwsClusterControlPlaneProxyConfig.fromMap(Map<String, dynamic> map) {
    return AwsClusterControlPlaneProxyConfig(
      secretArn: (map['secretArn'] as String).input(),
      secretVersion: (map['secretVersion'] as String).input(),
    );
  }
}

