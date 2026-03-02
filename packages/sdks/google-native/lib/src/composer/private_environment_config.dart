// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'networking_config.dart';
import 'private_cluster_config.dart';

/// The configuration information for configuring a Private IP Cloud Composer environment.
class PrivateEnvironmentConfig {
  /// Optional. When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork.
  final pulumi.Input<String>? cloudComposerConnectionSubnetwork;
  /// Optional. The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<String>? cloudComposerNetworkIpv4CidrBlock;
  /// Optional. The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from `web_server_ipv4_cidr_block`.
  final pulumi.Input<String>? cloudSqlIpv4CidrBlock;
  /// Optional. If `true`, a Private IP Cloud Composer environment is created. If this field is set to true, `IPAllocationPolicy.use_ip_aliases` must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<bool>? enablePrivateEnvironment;
  /// Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for `IPAllocationPolicy.cluster_ipv4_cidr_block` and `IPAllocationPolicy.service_ipv4_cidr_block`.
  final pulumi.Input<bool>? enablePrivatelyUsedPublicIps;
  /// Optional. Configuration for the network connections configuration in the environment.
  final pulumi.Input<NetworkingConfig>? networkingConfig;
  /// Optional. Configuration for the private GKE cluster for a Private IP Cloud Composer environment.
  final pulumi.Input<PrivateClusterConfig>? privateClusterConfig;
  /// Optional. The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from `private_cluster_config.master_ipv4_cidr_block` and `cloud_sql_ipv4_cidr_block`. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<String>? webServerIpv4CidrBlock;

  /// Creates a new [PrivateEnvironmentConfig].
  /// [cloudComposerConnectionSubnetwork] Optional. When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork.
  /// [cloudComposerNetworkIpv4CidrBlock] Optional. The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [cloudSqlIpv4CidrBlock] Optional. The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from `web_server_ipv4_cidr_block`.
  /// [enablePrivateEnvironment] Optional. If `true`, a Private IP Cloud Composer environment is created. If this field is set to true, `IPAllocationPolicy.use_ip_aliases` must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [enablePrivatelyUsedPublicIps] Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for `IPAllocationPolicy.cluster_ipv4_cidr_block` and `IPAllocationPolicy.service_ipv4_cidr_block`.
  /// [networkingConfig] Optional. Configuration for the network connections configuration in the environment.
  /// [privateClusterConfig] Optional. Configuration for the private GKE cluster for a Private IP Cloud Composer environment.
  /// [webServerIpv4CidrBlock] Optional. The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from `private_cluster_config.master_ipv4_cidr_block` and `cloud_sql_ipv4_cidr_block`. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  PrivateEnvironmentConfig({
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
      'networkingConfig': ?pulumi.Input.mapOptionalInputValue<NetworkingConfig, Map<String, dynamic>>(networkingConfig, (value) => value.toMap()),
      'privateClusterConfig': ?pulumi.Input.mapOptionalInputValue<PrivateClusterConfig, Map<String, dynamic>>(privateClusterConfig, (value) => value.toMap()),
      'webServerIpv4CidrBlock': ?webServerIpv4CidrBlock,
    };
  }

  factory PrivateEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return PrivateEnvironmentConfig(
      cloudComposerConnectionSubnetwork: map['cloudComposerConnectionSubnetwork'] == null ? null : (map['cloudComposerConnectionSubnetwork'] as String).input(),
      cloudComposerNetworkIpv4CidrBlock: map['cloudComposerNetworkIpv4CidrBlock'] == null ? null : (map['cloudComposerNetworkIpv4CidrBlock'] as String).input(),
      cloudSqlIpv4CidrBlock: map['cloudSqlIpv4CidrBlock'] == null ? null : (map['cloudSqlIpv4CidrBlock'] as String).input(),
      enablePrivateEnvironment: map['enablePrivateEnvironment'] == null ? null : (map['enablePrivateEnvironment'] as bool).input(),
      enablePrivatelyUsedPublicIps: map['enablePrivatelyUsedPublicIps'] == null ? null : (map['enablePrivatelyUsedPublicIps'] as bool).input(),
      networkingConfig: map['networkingConfig'] == null ? null : (NetworkingConfig.fromMap((map['networkingConfig'] as Map).cast<String, dynamic>())).input(),
      privateClusterConfig: map['privateClusterConfig'] == null ? null : (PrivateClusterConfig.fromMap((map['privateClusterConfig'] as Map).cast<String, dynamic>())).input(),
      webServerIpv4CidrBlock: map['webServerIpv4CidrBlock'] == null ? null : (map['webServerIpv4CidrBlock'] as String).input(),
    );
  }
}

