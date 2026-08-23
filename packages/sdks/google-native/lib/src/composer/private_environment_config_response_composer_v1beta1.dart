// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'networking_config_response_composer_v1beta1.dart';
import 'private_cluster_config_response_composer_v1beta1.dart';

/// The configuration information for configuring a Private IP Cloud Composer environment.
class PrivateEnvironmentConfigResponseComposerV1beta1 {
  /// Optional. When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork.
  final pulumi.Input<String> cloudComposerConnectionSubnetwork;
  /// Optional. The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<String> cloudComposerNetworkIpv4CidrBlock;
  /// The IP range reserved for the tenant project's Cloud Composer network. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<String> cloudComposerNetworkIpv4ReservedRange;
  /// Optional. The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block
  final pulumi.Input<String> cloudSqlIpv4CidrBlock;
  /// Optional. If `true`, a Private IP Cloud Composer environment is created. If this field is set to true, `IPAllocationPolicy.use_ip_aliases` must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<bool> enablePrivateEnvironment;
  /// Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for `IPAllocationPolicy.cluster_ipv4_cidr_block` and `IPAllocationPolicy.service_ipv4_cidr_block`.
  final pulumi.Input<bool> enablePrivatelyUsedPublicIps;
  /// Optional. Configuration for the network connections configuration in the environment.
  final pulumi.Input<NetworkingConfigResponseComposerV1beta1> networkingConfig;
  /// Optional. Configuration for the private GKE cluster for a Private IP Cloud Composer environment.
  final pulumi.Input<PrivateClusterConfigResponseComposerV1beta1> privateClusterConfig;
  /// Optional. The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<String> webServerIpv4CidrBlock;
  /// The IP range reserved for the tenant project's App Engine VMs. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<String> webServerIpv4ReservedRange;

  /// Creates a new [PrivateEnvironmentConfigResponseComposerV1beta1].
  /// [cloudComposerConnectionSubnetwork] Optional. When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork.
  /// [cloudComposerNetworkIpv4CidrBlock] Optional. The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [cloudComposerNetworkIpv4ReservedRange] The IP range reserved for the tenant project's Cloud Composer network. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [cloudSqlIpv4CidrBlock] Optional. The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block
  /// [enablePrivateEnvironment] Optional. If `true`, a Private IP Cloud Composer environment is created. If this field is set to true, `IPAllocationPolicy.use_ip_aliases` must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [enablePrivatelyUsedPublicIps] Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for `IPAllocationPolicy.cluster_ipv4_cidr_block` and `IPAllocationPolicy.service_ipv4_cidr_block`.
  /// [networkingConfig] Optional. Configuration for the network connections configuration in the environment.
  /// [privateClusterConfig] Optional. Configuration for the private GKE cluster for a Private IP Cloud Composer environment.
  /// [webServerIpv4CidrBlock] Optional. The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [webServerIpv4ReservedRange] The IP range reserved for the tenant project's App Engine VMs. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  const PrivateEnvironmentConfigResponseComposerV1beta1({
    required this.cloudComposerConnectionSubnetwork,
    required this.cloudComposerNetworkIpv4CidrBlock,
    required this.cloudComposerNetworkIpv4ReservedRange,
    required this.cloudSqlIpv4CidrBlock,
    required this.enablePrivateEnvironment,
    required this.enablePrivatelyUsedPublicIps,
    required this.networkingConfig,
    required this.privateClusterConfig,
    required this.webServerIpv4CidrBlock,
    required this.webServerIpv4ReservedRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudComposerConnectionSubnetwork': cloudComposerConnectionSubnetwork,
      'cloudComposerNetworkIpv4CidrBlock': cloudComposerNetworkIpv4CidrBlock,
      'cloudComposerNetworkIpv4ReservedRange': cloudComposerNetworkIpv4ReservedRange,
      'cloudSqlIpv4CidrBlock': cloudSqlIpv4CidrBlock,
      'enablePrivateEnvironment': enablePrivateEnvironment,
      'enablePrivatelyUsedPublicIps': enablePrivatelyUsedPublicIps,
      'networkingConfig': pulumi.Input.mapInputValue<NetworkingConfigResponseComposerV1beta1, Map<String, dynamic>>(networkingConfig, (value) => value.toMap()),
      'privateClusterConfig': pulumi.Input.mapInputValue<PrivateClusterConfigResponseComposerV1beta1, Map<String, dynamic>>(privateClusterConfig, (value) => value.toMap()),
      'webServerIpv4CidrBlock': webServerIpv4CidrBlock,
      'webServerIpv4ReservedRange': webServerIpv4ReservedRange,
    };
  }

  factory PrivateEnvironmentConfigResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return PrivateEnvironmentConfigResponseComposerV1beta1(
      cloudComposerConnectionSubnetwork: pulumi.Input.fromValue(map['cloudComposerConnectionSubnetwork'] as String),
      cloudComposerNetworkIpv4CidrBlock: pulumi.Input.fromValue(map['cloudComposerNetworkIpv4CidrBlock'] as String),
      cloudComposerNetworkIpv4ReservedRange: pulumi.Input.fromValue(map['cloudComposerNetworkIpv4ReservedRange'] as String),
      cloudSqlIpv4CidrBlock: pulumi.Input.fromValue(map['cloudSqlIpv4CidrBlock'] as String),
      enablePrivateEnvironment: pulumi.Input.fromValue(map['enablePrivateEnvironment'] as bool),
      enablePrivatelyUsedPublicIps: pulumi.Input.fromValue(map['enablePrivatelyUsedPublicIps'] as bool),
      networkingConfig: pulumi.Input.fromValue(NetworkingConfigResponseComposerV1beta1.fromMap((map['networkingConfig']! as Map).cast<String, dynamic>())),
      privateClusterConfig: pulumi.Input.fromValue(PrivateClusterConfigResponseComposerV1beta1.fromMap((map['privateClusterConfig']! as Map).cast<String, dynamic>())),
      webServerIpv4CidrBlock: pulumi.Input.fromValue(map['webServerIpv4CidrBlock'] as String),
      webServerIpv4ReservedRange: pulumi.Input.fromValue(map['webServerIpv4ReservedRange'] as String),
    );
  }
}
