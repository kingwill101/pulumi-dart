// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instances_instance_setting_ip_configuration_authorized_network.dart';
import 'get_database_instances_instance_setting_ip_configuration_psc_config.dart';

class GetDatabaseInstancesInstanceSettingIpConfiguration {
  /// The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the instance ip will be created in the allocated range. The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final pulumi.Input<String> allocatedIpRange;
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork>> authorizedNetworks;
  /// The custom subject alternative names for an instance with "CUSTOMER_MANAGED_CAS_CA" as the "serverCaMode".
  final pulumi.Input<List<String>> customSubjectAlternativeNames;
  /// Whether Google Cloud services such as BigQuery are allowed to access data in this Cloud SQL instance over a private IP connection. SQLSERVER database type is not supported.
  final pulumi.Input<bool> enablePrivatePathForGoogleCloudServices;
  /// Whether this Cloud SQL instance should be assigned a public IPV4 address. At least ipv4Enabled must be enabled or a privateNetwork must be configured.
  final pulumi.Input<bool> ipv4Enabled;
  /// The VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default. Specifying a network enables private IP. At least ipv4Enabled must be enabled or a privateNetwork must be configured. This setting can be updated, but it cannot be removed after it is set.
  final pulumi.Input<String> privateNetwork;
  /// PSC settings for a Cloud SQL instance.
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig>> pscConfigs;
  /// Specify how the server certificate's Certificate Authority is hosted.
  final pulumi.Input<String> serverCaMode;
  /// The resource name of the server CA pool for an instance with "CUSTOMER_MANAGED_CAS_CA" as the "serverCaMode".
  final pulumi.Input<String> serverCaPool;
  /// Settings for how the server certificate gets rotated.
  final pulumi.Input<String> serverCertificateRotationMode;
  /// Specify how SSL connection should be enforced in DB connections.
  final pulumi.Input<String> sslMode;

  /// Creates a new [GetDatabaseInstancesInstanceSettingIpConfiguration].
  /// [allocatedIpRange] The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the instance ip will be created in the allocated range. The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  /// [authorizedNetworks] Required.
  /// [customSubjectAlternativeNames] The custom subject alternative names for an instance with "CUSTOMER_MANAGED_CAS_CA" as the "serverCaMode".
  /// [enablePrivatePathForGoogleCloudServices] Whether Google Cloud services such as BigQuery are allowed to access data in this Cloud SQL instance over a private IP connection. SQLSERVER database type is not supported.
  /// [ipv4Enabled] Whether this Cloud SQL instance should be assigned a public IPV4 address. At least ipv4Enabled must be enabled or a privateNetwork must be configured.
  /// [privateNetwork] The VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default. Specifying a network enables private IP. At least ipv4Enabled must be enabled or a privateNetwork must be configured. This setting can be updated, but it cannot be removed after it is set.
  /// [pscConfigs] PSC settings for a Cloud SQL instance.
  /// [serverCaMode] Specify how the server certificate's Certificate Authority is hosted.
  /// [serverCaPool] The resource name of the server CA pool for an instance with "CUSTOMER_MANAGED_CAS_CA" as the "serverCaMode".
  /// [serverCertificateRotationMode] Settings for how the server certificate gets rotated.
  /// [sslMode] Specify how SSL connection should be enforced in DB connections.
  const GetDatabaseInstancesInstanceSettingIpConfiguration({
    required this.allocatedIpRange,
    required this.authorizedNetworks,
    required this.customSubjectAlternativeNames,
    required this.enablePrivatePathForGoogleCloudServices,
    required this.ipv4Enabled,
    required this.privateNetwork,
    required this.pscConfigs,
    required this.serverCaMode,
    required this.serverCaPool,
    required this.serverCertificateRotationMode,
    required this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': allocatedIpRange,
      'authorizedNetworks': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork>, List<Map<String, dynamic>>>(authorizedNetworks, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customSubjectAlternativeNames': customSubjectAlternativeNames,
      'enablePrivatePathForGoogleCloudServices': enablePrivatePathForGoogleCloudServices,
      'ipv4Enabled': ipv4Enabled,
      'privateNetwork': privateNetwork,
      'pscConfigs': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig>, List<Map<String, dynamic>>>(pscConfigs, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverCaMode': serverCaMode,
      'serverCaPool': serverCaPool,
      'serverCertificateRotationMode': serverCertificateRotationMode,
      'sslMode': sslMode,
    };
  }

  factory GetDatabaseInstancesInstanceSettingIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingIpConfiguration(
      allocatedIpRange: pulumi.Input.fromValue(map['allocatedIpRange'] as String),
      authorizedNetworks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork>(map['authorizedNetworks']!, (value) => GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      customSubjectAlternativeNames: pulumi.Input.fromValue((map['customSubjectAlternativeNames'] as List).cast<String>()),
      enablePrivatePathForGoogleCloudServices: pulumi.Input.fromValue(map['enablePrivatePathForGoogleCloudServices'] as bool),
      ipv4Enabled: pulumi.Input.fromValue(map['ipv4Enabled'] as bool),
      privateNetwork: pulumi.Input.fromValue(map['privateNetwork'] as String),
      pscConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig>(map['pscConfigs']!, (value) => GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig.fromMap((value as Map).cast<String, dynamic>()))),
      serverCaMode: pulumi.Input.fromValue(map['serverCaMode'] as String),
      serverCaPool: pulumi.Input.fromValue(map['serverCaPool'] as String),
      serverCertificateRotationMode: pulumi.Input.fromValue(map['serverCertificateRotationMode'] as String),
      sslMode: pulumi.Input.fromValue(map['sslMode'] as String),
    );
  }
}
