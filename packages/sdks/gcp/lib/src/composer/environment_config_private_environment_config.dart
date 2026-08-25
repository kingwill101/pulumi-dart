// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigPrivateEnvironmentConfig {
  /// When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<String?>? cloudComposerConnectionSubnetwork;
  /// The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<String?>? cloudComposerNetworkIpv4CidrBlock;
  /// The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block.
  final pulumi.Input<String?>? cloudSqlIpv4CidrBlock;
  /// Mode of internal communication within the Composer environment. Must be one of "VPC_PEERING" or "PRIVATE_SERVICE_CONNECT".
  final pulumi.Input<String?>? connectionType;
  /// If true, access to the public endpoint of the GKE cluster is denied. If this field is set to true, ip_allocation_policy.use_ip_aliases must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<bool?>? enablePrivateEndpoint;
  /// When enabled, IPs from public (non-RFC1918) ranges can be used for ip_allocation_policy.cluster_ipv4_cidr_block and ip_allocation_policy.service_ipv4_cidr_block.
  final pulumi.Input<bool?>? enablePrivatelyUsedPublicIps;
  /// The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster's network. If left blank, the default value of '172.16.0.0/28' is used.
  final pulumi.Input<String?>? masterIpv4CidrBlock;
  /// The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from masterIpv4CidrBlock and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<String?>? webServerIpv4CidrBlock;

  /// Creates a new [EnvironmentConfigPrivateEnvironmentConfig].
  /// [cloudComposerConnectionSubnetwork] When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [cloudComposerNetworkIpv4CidrBlock] The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [cloudSqlIpv4CidrBlock] The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block.
  /// [connectionType] Mode of internal communication within the Composer environment. Must be one of "VPC_PEERING" or "PRIVATE_SERVICE_CONNECT".
  /// [enablePrivateEndpoint] If true, access to the public endpoint of the GKE cluster is denied. If this field is set to true, ip_allocation_policy.use_ip_aliases must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [enablePrivatelyUsedPublicIps] When enabled, IPs from public (non-RFC1918) ranges can be used for ip_allocation_policy.cluster_ipv4_cidr_block and ip_allocation_policy.service_ipv4_cidr_block.
  /// [masterIpv4CidrBlock] The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster's network. If left blank, the default value of '172.16.0.0/28' is used.
  /// [webServerIpv4CidrBlock] The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from masterIpv4CidrBlock and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  const EnvironmentConfigPrivateEnvironmentConfig({
    this.cloudComposerConnectionSubnetwork,
    this.cloudComposerNetworkIpv4CidrBlock,
    this.cloudSqlIpv4CidrBlock,
    this.connectionType,
    this.enablePrivateEndpoint,
    this.enablePrivatelyUsedPublicIps,
    this.masterIpv4CidrBlock,
    this.webServerIpv4CidrBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudComposerConnectionSubnetwork': ?cloudComposerConnectionSubnetwork,
      'cloudComposerNetworkIpv4CidrBlock': ?cloudComposerNetworkIpv4CidrBlock,
      'cloudSqlIpv4CidrBlock': ?cloudSqlIpv4CidrBlock,
      'connectionType': ?connectionType,
      'enablePrivateEndpoint': ?enablePrivateEndpoint,
      'enablePrivatelyUsedPublicIps': ?enablePrivatelyUsedPublicIps,
      'masterIpv4CidrBlock': ?masterIpv4CidrBlock,
      'webServerIpv4CidrBlock': ?webServerIpv4CidrBlock,
    };
  }

  factory EnvironmentConfigPrivateEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigPrivateEnvironmentConfig(
      cloudComposerConnectionSubnetwork: (() { final guardedValue = map['cloudComposerConnectionSubnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudComposerNetworkIpv4CidrBlock: (() { final guardedValue = map['cloudComposerNetworkIpv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudSqlIpv4CidrBlock: (() { final guardedValue = map['cloudSqlIpv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePrivateEndpoint: (() { final guardedValue = map['enablePrivateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivatelyUsedPublicIps: (() { final guardedValue = map['enablePrivatelyUsedPublicIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      masterIpv4CidrBlock: (() { final guardedValue = map['masterIpv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webServerIpv4CidrBlock: (() { final guardedValue = map['webServerIpv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
