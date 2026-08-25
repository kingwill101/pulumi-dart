// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_node_pool_config_autoscaling_metrics_collection.dart';
import 'aws_node_pool_config_config_encryption.dart';
import 'aws_node_pool_config_instance_placement.dart';
import 'aws_node_pool_config_proxy_config.dart';
import 'aws_node_pool_config_root_volume.dart';
import 'aws_node_pool_config_spot_config.dart';
import 'aws_node_pool_config_ssh_config.dart';
import 'aws_node_pool_config_taint.dart';

class AwsNodePoolConfig {
  /// Optional. Configuration related to CloudWatch metrics collection on the Auto Scaling group of the node pool. When unspecified, metrics collection is disabled.
  final pulumi.Input<AwsNodePoolConfigAutoscalingMetricsCollection?>? autoscalingMetricsCollection;
  /// The ARN of the AWS KMS key used to encrypt node pool configuration.
  final pulumi.Input<AwsNodePoolConfigConfigEncryption> configEncryption;
  /// The name of the AWS IAM role assigned to nodes in the pool.
  final pulumi.Input<String> iamInstanceProfile;
  /// The OS image type to use on node pool instances.
  final pulumi.Input<String?>? imageType;
  /// Details of placement information for an instance.
  final pulumi.Input<AwsNodePoolConfigInstancePlacement?>? instancePlacement;
  /// Optional. The AWS instance type. When unspecified, it defaults to `m5.large`.
  final pulumi.Input<String?>? instanceType;
  /// Optional. The initial labels assigned to nodes of this node pool. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Proxy configuration for outbound HTTP(S) traffic.
  final pulumi.Input<AwsNodePoolConfigProxyConfig?>? proxyConfig;
  /// Optional. Template for the root volume provisioned for node pool nodes. Volumes will be provisioned in the availability zone assigned to the node pool subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type.
  final pulumi.Input<AwsNodePoolConfigRootVolume?>? rootVolume;
  /// Optional. The IDs of additional security groups to add to nodes in this pool. The manager will automatically create security groups with minimum rules needed for a functioning cluster.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// Optional. When specified, the node pool will provision Spot instances from the set of spot_config.instance_types. This field is mutually exclusive with `instanceType`
  final pulumi.Input<AwsNodePoolConfigSpotConfig?>? spotConfig;
  /// Optional. The SSH configuration.
  final pulumi.Input<AwsNodePoolConfigSshConfig?>? sshConfig;
  /// Optional. Key/value metadata to assign to each underlying AWS resource. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Optional. The initial taints assigned to nodes of this node pool.
  final pulumi.Input<List<AwsNodePoolConfigTaint>?>? taints;

  /// Creates a new [AwsNodePoolConfig].
  /// [autoscalingMetricsCollection] Optional. Configuration related to CloudWatch metrics collection on the Auto Scaling group of the node pool. When unspecified, metrics collection is disabled.
  /// [configEncryption] The ARN of the AWS KMS key used to encrypt node pool configuration.
  /// [iamInstanceProfile] The name of the AWS IAM role assigned to nodes in the pool.
  /// [imageType] The OS image type to use on node pool instances.
  /// [instancePlacement] Details of placement information for an instance.
  /// [instanceType] Optional. The AWS instance type. When unspecified, it defaults to `m5.large`.
  /// [labels] Optional. The initial labels assigned to nodes of this node pool. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [proxyConfig] Proxy configuration for outbound HTTP(S) traffic.
  /// [rootVolume] Optional. Template for the root volume provisioned for node pool nodes. Volumes will be provisioned in the availability zone assigned to the node pool subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type.
  /// [securityGroupIds] Optional. The IDs of additional security groups to add to nodes in this pool. The manager will automatically create security groups with minimum rules needed for a functioning cluster.
  /// [spotConfig] Optional. When specified, the node pool will provision Spot instances from the set of spot_config.instance_types. This field is mutually exclusive with `instanceType`
  /// [sshConfig] Optional. The SSH configuration.
  /// [tags] Optional. Key/value metadata to assign to each underlying AWS resource. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
  /// [taints] Optional. The initial taints assigned to nodes of this node pool.
  const AwsNodePoolConfig({
    this.autoscalingMetricsCollection,
    required this.configEncryption,
    required this.iamInstanceProfile,
    this.imageType,
    this.instancePlacement,
    this.instanceType,
    this.labels,
    this.proxyConfig,
    this.rootVolume,
    this.securityGroupIds,
    this.spotConfig,
    this.sshConfig,
    this.tags,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingMetricsCollection': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolConfigAutoscalingMetricsCollection, Map<String, dynamic>>(autoscalingMetricsCollection, (value) => value.toMap()),
      'configEncryption': pulumi.Input.mapInputValue<AwsNodePoolConfigConfigEncryption, Map<String, dynamic>>(configEncryption, (value) => value.toMap()),
      'iamInstanceProfile': iamInstanceProfile,
      'imageType': ?imageType,
      'instancePlacement': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolConfigInstancePlacement, Map<String, dynamic>>(instancePlacement, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'labels': ?labels,
      'proxyConfig': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolConfigProxyConfig, Map<String, dynamic>>(proxyConfig, (value) => value.toMap()),
      'rootVolume': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolConfigRootVolume, Map<String, dynamic>>(rootVolume, (value) => value.toMap()),
      'securityGroupIds': ?securityGroupIds,
      'spotConfig': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolConfigSpotConfig, Map<String, dynamic>>(spotConfig, (value) => value.toMap()),
      'sshConfig': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolConfigSshConfig, Map<String, dynamic>>(sshConfig, (value) => value.toMap()),
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<AwsNodePoolConfigTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<AwsNodePoolConfigTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfig(
      autoscalingMetricsCollection: (() { final guardedValue = map['autoscalingMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsNodePoolConfigAutoscalingMetricsCollection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configEncryption: pulumi.Input.fromValue(AwsNodePoolConfigConfigEncryption.fromMap((map['configEncryption']! as Map).cast<String, dynamic>())),
      iamInstanceProfile: pulumi.Input.fromValue(map['iamInstanceProfile'] as String),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instancePlacement: (() { final guardedValue = map['instancePlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsNodePoolConfigInstancePlacement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      proxyConfig: (() { final guardedValue = map['proxyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsNodePoolConfigProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rootVolume: (() { final guardedValue = map['rootVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsNodePoolConfigRootVolume.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      spotConfig: (() { final guardedValue = map['spotConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsNodePoolConfigSpotConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshConfig: (() { final guardedValue = map['sshConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsNodePoolConfigSshConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AwsNodePoolConfigTaint>(guardedValue, (value) => AwsNodePoolConfigTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
