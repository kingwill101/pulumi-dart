// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'networking_config_composer_v1beta1.dart';
import 'private_cluster_config_composer_v1beta1.dart';

/// The configuration information for configuring a Private IP Cloud Composer environment.
class PrivateEnvironmentConfigComposerV1beta1 {
  /// Optional. When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork.
  final pulumi.Input<String>? cloudComposerConnectionSubnetwork;

  /// Optional. The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<String>? cloudComposerNetworkIpv4CidrBlock;

  /// Optional. The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block
  final pulumi.Input<String>? cloudSqlIpv4CidrBlock;

  /// Optional. If `true`, a Private IP Cloud Composer environment is created. If this field is set to true, `IPAllocationPolicy.use_ip_aliases` must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<bool>? enablePrivateEnvironment;

  /// Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for `IPAllocationPolicy.cluster_ipv4_cidr_block` and `IPAllocationPolicy.service_ipv4_cidr_block`.
  final pulumi.Input<bool>? enablePrivatelyUsedPublicIps;

  /// Optional. Configuration for the network connections configuration in the environment.
  final pulumi.Input<NetworkingConfigComposerV1beta1>? networkingConfig;

  /// Optional. Configuration for the private GKE cluster for a Private IP Cloud Composer environment.
  final pulumi.Input<PrivateClusterConfigComposerV1beta1>? privateClusterConfig;

  /// Optional. The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<String>? webServerIpv4CidrBlock;

  /// Creates a new [PrivateEnvironmentConfigComposerV1beta1].
  /// [cloudComposerConnectionSubnetwork] Optional. When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork.
  /// [cloudComposerNetworkIpv4CidrBlock] Optional. The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [cloudSqlIpv4CidrBlock] Optional. The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block
  /// [enablePrivateEnvironment] Optional. If `true`, a Private IP Cloud Composer environment is created. If this field is set to true, `IPAllocationPolicy.use_ip_aliases` must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [enablePrivatelyUsedPublicIps] Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for `IPAllocationPolicy.cluster_ipv4_cidr_block` and `IPAllocationPolicy.service_ipv4_cidr_block`.
  /// [networkingConfig] Optional. Configuration for the network connections configuration in the environment.
  /// [privateClusterConfig] Optional. Configuration for the private GKE cluster for a Private IP Cloud Composer environment.
  /// [webServerIpv4CidrBlock] Optional. The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  PrivateEnvironmentConfigComposerV1beta1({
    this.cloudComposerConnectionSubnetwork,
    this.cloudComposerNetworkIpv4CidrBlock,
    this.cloudSqlIpv4CidrBlock,
    this.enablePrivateEnvironment,
    this.enablePrivatelyUsedPublicIps,
    this.networkingConfig,
    this.privateClusterConfig,
    this.webServerIpv4CidrBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudComposerConnectionSubnetwork': ?cloudComposerConnectionSubnetwork,
      'cloudComposerNetworkIpv4CidrBlock': ?cloudComposerNetworkIpv4CidrBlock,
      'cloudSqlIpv4CidrBlock': ?cloudSqlIpv4CidrBlock,
      'enablePrivateEnvironment': ?enablePrivateEnvironment,
      'enablePrivatelyUsedPublicIps': ?enablePrivatelyUsedPublicIps,
      'networkingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkingConfigComposerV1beta1,
            Map<String, dynamic>
          >(networkingConfig, (value) => value.toMap()),
      'privateClusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateClusterConfigComposerV1beta1,
            Map<String, dynamic>
          >(privateClusterConfig, (value) => value.toMap()),
      'webServerIpv4CidrBlock': ?webServerIpv4CidrBlock,
    };
  }

  factory PrivateEnvironmentConfigComposerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateEnvironmentConfigComposerV1beta1(
      cloudComposerConnectionSubnetwork: (() {
        final guardedValue = map['cloudComposerConnectionSubnetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudComposerNetworkIpv4CidrBlock: (() {
        final guardedValue = map['cloudComposerNetworkIpv4CidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudSqlIpv4CidrBlock: (() {
        final guardedValue = map['cloudSqlIpv4CidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enablePrivateEnvironment: (() {
        final guardedValue = map['enablePrivateEnvironment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enablePrivatelyUsedPublicIps: (() {
        final guardedValue = map['enablePrivatelyUsedPublicIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      networkingConfig: (() {
        final guardedValue = map['networkingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkingConfigComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateClusterConfig: (() {
        final guardedValue = map['privateClusterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateClusterConfigComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      webServerIpv4CidrBlock: (() {
        final guardedValue = map['webServerIpv4CidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
