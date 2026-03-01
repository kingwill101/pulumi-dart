// ignore_for_file: unused_element, unnecessary_cast


class AwsClusterControlPlaneSshConfig {
  /// The name of the EC2 key pair used to login into cluster machines.
  final String ec2KeyPair;

  /// Creates a new [AwsClusterControlPlaneSshConfig].
  /// [ec2KeyPair] The name of the EC2 key pair used to login into cluster machines.
  AwsClusterControlPlaneSshConfig({
    required this.ec2KeyPair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ec2KeyPair': ec2KeyPair,
    };
  }

  factory AwsClusterControlPlaneSshConfig.fromMap(Map<String, dynamic> map) {
    return AwsClusterControlPlaneSshConfig(
      ec2KeyPair: map['ec2KeyPair'] as String,
    );
  }
}

