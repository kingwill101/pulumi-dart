// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolConfigSpotConfig {
  /// List of AWS EC2 instance types for creating a spot node pool's nodes. The specified instance types must have the same number of CPUs and memory. You can use the Amazon EC2 Instance Selector tool (https://github.com/aws/amazon-ec2-instance-selector) to choose instance types with matching CPU and memory
  final pulumi.Input<List<String>> instanceTypes;

  /// Creates a new [AwsNodePoolConfigSpotConfig].
  /// [instanceTypes] List of AWS EC2 instance types for creating a spot node pool's nodes. The specified instance types must have the same number of CPUs and memory. You can use the Amazon EC2 Instance Selector tool (https://github.com/aws/amazon-ec2-instance-selector) to choose instance types with matching CPU and memory
  AwsNodePoolConfigSpotConfig({
    required this.instanceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTypes': instanceTypes,
    };
  }

  factory AwsNodePoolConfigSpotConfig.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigSpotConfig(
      instanceTypes: ((map['instanceTypes'] as List).cast<String>()).input(),
    );
  }
}

