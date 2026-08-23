// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolConfigProxyConfig {
  /// The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  final pulumi.Input<String> secretArn;
  /// The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [AwsNodePoolConfigProxyConfig].
  /// [secretArn] The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  /// [secretVersion] The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  const AwsNodePoolConfigProxyConfig({
    required this.secretArn,
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretArn': secretArn,
      'secretVersion': secretVersion,
    };
  }

  factory AwsNodePoolConfigProxyConfig.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigProxyConfig(
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}
