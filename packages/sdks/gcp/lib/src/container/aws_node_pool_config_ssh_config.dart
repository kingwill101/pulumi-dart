// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolConfigSshConfig {
  /// The name of the EC2 key pair used to login into cluster machines.
  final pulumi.Input<String> ec2KeyPair;

  /// Creates a new [AwsNodePoolConfigSshConfig].
  /// [ec2KeyPair] The name of the EC2 key pair used to login into cluster machines.
  AwsNodePoolConfigSshConfig({
    required this.ec2KeyPair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ec2KeyPair': ec2KeyPair,
    };
  }

  factory AwsNodePoolConfigSshConfig.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigSshConfig(
      ec2KeyPair: pulumi.Input.fromValue(map['ec2KeyPair'] as String),
    );
  }
}

