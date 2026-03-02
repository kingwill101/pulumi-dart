// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_cluster_control_plane_aws_services_authentication.dart';
import 'aws_cluster_control_plane_config_encryption.dart';
import 'aws_cluster_control_plane_database_encryption.dart';
import 'aws_cluster_control_plane_instance_placement.dart';
import 'aws_cluster_control_plane_main_volume.dart';
import 'aws_cluster_control_plane_proxy_config.dart';
import 'aws_cluster_control_plane_root_volume.dart';
import 'aws_cluster_control_plane_ssh_config.dart';

class AwsClusterControlPlane {
  /// Authentication configuration for management of AWS resources.
  final pulumi.Input<AwsClusterControlPlaneAwsServicesAuthentication> awsServicesAuthentication;
  /// The ARN of the AWS KMS key used to encrypt cluster configuration.
  final pulumi.Input<AwsClusterControlPlaneConfigEncryption> configEncryption;
  /// The ARN of the AWS KMS key used to encrypt cluster secrets.
  final pulumi.Input<AwsClusterControlPlaneDatabaseEncryption> databaseEncryption;
  /// The name of the AWS IAM instance pofile to assign to each control plane replica.
  final pulumi.Input<String> iamInstanceProfile;
  /// Details of placement information for an instance.
  final pulumi.Input<AwsClusterControlPlaneInstancePlacement>? instancePlacement;
  /// Optional. The AWS instance type. When unspecified, it defaults to `m5.large`.
  final pulumi.Input<String>? instanceType;
  /// Optional. Configuration related to the main volume provisioned for each control plane replica. The main volume is in charge of storing all of the cluster's etcd state. Volumes will be provisioned in the availability zone associated with the corresponding subnet. When unspecified, it defaults to 8 GiB with the GP2 volume type.
  final pulumi.Input<AwsClusterControlPlaneMainVolume>? mainVolume;
  /// Proxy configuration for outbound HTTP(S) traffic.
  final pulumi.Input<AwsClusterControlPlaneProxyConfig>? proxyConfig;
  /// Optional. Configuration related to the root volume provisioned for each control plane replica. Volumes will be provisioned in the availability zone associated with the corresponding subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type.
  final pulumi.Input<AwsClusterControlPlaneRootVolume>? rootVolume;
  /// Optional. The IDs of additional security groups to add to control plane replicas. The Anthos Multi-Cloud API will automatically create and manage security groups with the minimum rules needed for a functioning cluster.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Optional. SSH configuration for how to access the underlying control plane machines.
  final pulumi.Input<AwsClusterControlPlaneSshConfig>? sshConfig;
  /// The list of subnets where control plane replicas will run. A replica will be provisioned on each subnet and up to three values can be provided. Each subnet must be in a different AWS Availability Zone (AZ).
  final pulumi.Input<List<String>> subnetIds;
  /// Optional. A set of AWS resource tags to propagate to all underlying managed AWS resources. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Kubernetes version to run on control plane replicas (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling .
  final pulumi.Input<String> version;

  /// Creates a new [AwsClusterControlPlane].
  /// [awsServicesAuthentication] Authentication configuration for management of AWS resources.
  /// [configEncryption] The ARN of the AWS KMS key used to encrypt cluster configuration.
  /// [databaseEncryption] The ARN of the AWS KMS key used to encrypt cluster secrets.
  /// [iamInstanceProfile] The name of the AWS IAM instance pofile to assign to each control plane replica.
  /// [instancePlacement] Details of placement information for an instance.
  /// [instanceType] Optional. The AWS instance type. When unspecified, it defaults to `m5.large`.
  /// [mainVolume] Optional. Configuration related to the main volume provisioned for each control plane replica. The main volume is in charge of storing all of the cluster's etcd state. Volumes will be provisioned in the availability zone associated with the corresponding subnet. When unspecified, it defaults to 8 GiB with the GP2 volume type.
  /// [proxyConfig] Proxy configuration for outbound HTTP(S) traffic.
  /// [rootVolume] Optional. Configuration related to the root volume provisioned for each control plane replica. Volumes will be provisioned in the availability zone associated with the corresponding subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type.
  /// [securityGroupIds] Optional. The IDs of additional security groups to add to control plane replicas. The Anthos Multi-Cloud API will automatically create and manage security groups with the minimum rules needed for a functioning cluster.
  /// [sshConfig] Optional. SSH configuration for how to access the underlying control plane machines.
  /// [subnetIds] The list of subnets where control plane replicas will run. A replica will be provisioned on each subnet and up to three values can be provided. Each subnet must be in a different AWS Availability Zone (AZ).
  /// [tags] Optional. A set of AWS resource tags to propagate to all underlying managed AWS resources. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
  /// [version] The Kubernetes version to run on control plane replicas (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling .
  AwsClusterControlPlane({
    required this.awsServicesAuthentication,
    required this.configEncryption,
    required this.databaseEncryption,
    required this.iamInstanceProfile,
    this.instancePlacement,
    this.instanceType,
    this.mainVolume,
    this.proxyConfig,
    this.rootVolume,
    this.securityGroupIds,
    this.sshConfig,
    required this.subnetIds,
    this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsServicesAuthentication': pulumi.Input.mapInputValue<AwsClusterControlPlaneAwsServicesAuthentication, Map<String, dynamic>>(awsServicesAuthentication, (value) => value.toMap()),
      'configEncryption': pulumi.Input.mapInputValue<AwsClusterControlPlaneConfigEncryption, Map<String, dynamic>>(configEncryption, (value) => value.toMap()),
      'databaseEncryption': pulumi.Input.mapInputValue<AwsClusterControlPlaneDatabaseEncryption, Map<String, dynamic>>(databaseEncryption, (value) => value.toMap()),
      'iamInstanceProfile': iamInstanceProfile,
      'instancePlacement': ?pulumi.Input.mapOptionalInputValue<AwsClusterControlPlaneInstancePlacement, Map<String, dynamic>>(instancePlacement, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'mainVolume': ?pulumi.Input.mapOptionalInputValue<AwsClusterControlPlaneMainVolume, Map<String, dynamic>>(mainVolume, (value) => value.toMap()),
      'proxyConfig': ?pulumi.Input.mapOptionalInputValue<AwsClusterControlPlaneProxyConfig, Map<String, dynamic>>(proxyConfig, (value) => value.toMap()),
      'rootVolume': ?pulumi.Input.mapOptionalInputValue<AwsClusterControlPlaneRootVolume, Map<String, dynamic>>(rootVolume, (value) => value.toMap()),
      'securityGroupIds': ?securityGroupIds,
      'sshConfig': ?pulumi.Input.mapOptionalInputValue<AwsClusterControlPlaneSshConfig, Map<String, dynamic>>(sshConfig, (value) => value.toMap()),
      'subnetIds': subnetIds,
      'tags': ?tags,
      'version': version,
    };
  }

  factory AwsClusterControlPlane.fromMap(Map<String, dynamic> map) {
    return AwsClusterControlPlane(
      awsServicesAuthentication: (AwsClusterControlPlaneAwsServicesAuthentication.fromMap((map['awsServicesAuthentication'] as Map).cast<String, dynamic>())).input(),
      configEncryption: (AwsClusterControlPlaneConfigEncryption.fromMap((map['configEncryption'] as Map).cast<String, dynamic>())).input(),
      databaseEncryption: (AwsClusterControlPlaneDatabaseEncryption.fromMap((map['databaseEncryption'] as Map).cast<String, dynamic>())).input(),
      iamInstanceProfile: (map['iamInstanceProfile'] as String).input(),
      instancePlacement: map['instancePlacement'] == null ? null : (AwsClusterControlPlaneInstancePlacement.fromMap((map['instancePlacement'] as Map).cast<String, dynamic>())).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      mainVolume: map['mainVolume'] == null ? null : (AwsClusterControlPlaneMainVolume.fromMap((map['mainVolume'] as Map).cast<String, dynamic>())).input(),
      proxyConfig: map['proxyConfig'] == null ? null : (AwsClusterControlPlaneProxyConfig.fromMap((map['proxyConfig'] as Map).cast<String, dynamic>())).input(),
      rootVolume: map['rootVolume'] == null ? null : (AwsClusterControlPlaneRootVolume.fromMap((map['rootVolume'] as Map).cast<String, dynamic>())).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      sshConfig: map['sshConfig'] == null ? null : (AwsClusterControlPlaneSshConfig.fromMap((map['sshConfig'] as Map).cast<String, dynamic>())).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      version: (map['version'] as String).input(),
    );
  }
}

