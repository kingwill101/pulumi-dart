// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instances_instance_setting_ip_configuration_psc_config_psc_auto_connection.dart';

class GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig {
  /// List of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  final pulumi.Input<List<String>> allowedConsumerProjects;
  /// Name of network attachment resource used to authorize a producer service to connect a PSC interface to the consumer's VPC. For example: "projects/myProject/regions/myRegion/networkAttachments/myNetworkAttachment". This is required to enable outbound connection on a PSC instance.
  final pulumi.Input<String> networkAttachmentUri;
  /// Whether a service connection policy is created for the auto connections configured for the instance.
  final pulumi.Input<bool> pscAutoConnectionPolicyEnabled;
  /// A comma-separated list of networks or a comma-separated list of network-project pairs. Each project in this list is represented by a project number (numeric) or by a project ID (alphanumeric). This allows Private Service Connect connections to be created automatically for the specified networks.
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection>> pscAutoConnections;
  /// Whether PSC auto DNS is enabled for this instance.
  final pulumi.Input<bool> pscAutoDnsEnabled;
  /// Whether PSC connectivity is enabled for this instance.
  final pulumi.Input<bool> pscEnabled;
  /// Whether PSC write endpoint DNS is enabled for this instance.
  final pulumi.Input<bool> pscWriteEndpointDnsEnabled;

  /// Creates a new [GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig].
  /// [allowedConsumerProjects] List of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  /// [networkAttachmentUri] Name of network attachment resource used to authorize a producer service to connect a PSC interface to the consumer's VPC. For example: "projects/myProject/regions/myRegion/networkAttachments/myNetworkAttachment". This is required to enable outbound connection on a PSC instance.
  /// [pscAutoConnectionPolicyEnabled] Whether a service connection policy is created for the auto connections configured for the instance.
  /// [pscAutoConnections] A comma-separated list of networks or a comma-separated list of network-project pairs. Each project in this list is represented by a project number (numeric) or by a project ID (alphanumeric). This allows Private Service Connect connections to be created automatically for the specified networks.
  /// [pscAutoDnsEnabled] Whether PSC auto DNS is enabled for this instance.
  /// [pscEnabled] Whether PSC connectivity is enabled for this instance.
  /// [pscWriteEndpointDnsEnabled] Whether PSC write endpoint DNS is enabled for this instance.
  const GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig({
    required this.allowedConsumerProjects,
    required this.networkAttachmentUri,
    required this.pscAutoConnectionPolicyEnabled,
    required this.pscAutoConnections,
    required this.pscAutoDnsEnabled,
    required this.pscEnabled,
    required this.pscWriteEndpointDnsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedConsumerProjects': allowedConsumerProjects,
      'networkAttachmentUri': networkAttachmentUri,
      'pscAutoConnectionPolicyEnabled': pscAutoConnectionPolicyEnabled,
      'pscAutoConnections': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection>, List<Map<String, dynamic>>>(pscAutoConnections, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pscAutoDnsEnabled': pscAutoDnsEnabled,
      'pscEnabled': pscEnabled,
      'pscWriteEndpointDnsEnabled': pscWriteEndpointDnsEnabled,
    };
  }

  factory GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig(
      allowedConsumerProjects: pulumi.Input.fromValue((map['allowedConsumerProjects'] as List).cast<String>()),
      networkAttachmentUri: pulumi.Input.fromValue(map['networkAttachmentUri'] as String),
      pscAutoConnectionPolicyEnabled: pulumi.Input.fromValue(map['pscAutoConnectionPolicyEnabled'] as bool),
      pscAutoConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection>(map['pscAutoConnections']!, (value) => GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))),
      pscAutoDnsEnabled: pulumi.Input.fromValue(map['pscAutoDnsEnabled'] as bool),
      pscEnabled: pulumi.Input.fromValue(map['pscEnabled'] as bool),
      pscWriteEndpointDnsEnabled: pulumi.Input.fromValue(map['pscWriteEndpointDnsEnabled'] as bool),
    );
  }
}
