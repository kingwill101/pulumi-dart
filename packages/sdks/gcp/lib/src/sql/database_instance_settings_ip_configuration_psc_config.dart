// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_settings_ip_configuration_psc_config_psc_auto_connection.dart';

class DatabaseInstanceSettingsIpConfigurationPscConfig {
  /// List of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  final pulumi.Input<List<String>>? allowedConsumerProjects;
  /// Name of network attachment resource used to authorize a producer service to connect a PSC interface to the consumer's VPC. For example: "projects/myProject/regions/myRegion/networkAttachments/myNetworkAttachment". This is required to enable outbound connection on a PSC instance.
  final pulumi.Input<String>? networkAttachmentUri;
  /// A comma-separated list of networks or a comma-separated list of network-project pairs. Each project in this list is represented by a project number (numeric) or by a project ID (alphanumeric). This allows Private Service Connect connections to be created automatically for the specified networks.
  final pulumi.Input<List<DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection>>? pscAutoConnections;
  /// Whether PSC connectivity is enabled for this instance.
  final pulumi.Input<bool>? pscEnabled;

  /// Creates a new [DatabaseInstanceSettingsIpConfigurationPscConfig].
  /// [allowedConsumerProjects] List of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  /// [networkAttachmentUri] Name of network attachment resource used to authorize a producer service to connect a PSC interface to the consumer's VPC. For example: "projects/myProject/regions/myRegion/networkAttachments/myNetworkAttachment". This is required to enable outbound connection on a PSC instance.
  /// [pscAutoConnections] A comma-separated list of networks or a comma-separated list of network-project pairs. Each project in this list is represented by a project number (numeric) or by a project ID (alphanumeric). This allows Private Service Connect connections to be created automatically for the specified networks.
  /// [pscEnabled] Whether PSC connectivity is enabled for this instance.
  DatabaseInstanceSettingsIpConfigurationPscConfig({
    this.allowedConsumerProjects,
    this.networkAttachmentUri,
    this.pscAutoConnections,
    this.pscEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedConsumerProjects': ?allowedConsumerProjects,
      'networkAttachmentUri': ?networkAttachmentUri,
      'pscAutoConnections': ?pulumi.Input.mapOptionalInputValue<List<DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection>, List<Map<String, dynamic>>>(pscAutoConnections, (value) => pulumi.Input.encodeList<DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pscEnabled': ?pscEnabled,
    };
  }

  factory DatabaseInstanceSettingsIpConfigurationPscConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsIpConfigurationPscConfig(
      allowedConsumerProjects: map['allowedConsumerProjects'] == null ? null : ((map['allowedConsumerProjects'] as List).cast<String>()).input(),
      networkAttachmentUri: map['networkAttachmentUri'] == null ? null : (map['networkAttachmentUri'] as String).input(),
      pscAutoConnections: map['pscAutoConnections'] == null ? null : (pulumi.Input.decodeList<DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection>(map['pscAutoConnections'], (value) => DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pscEnabled: map['pscEnabled'] == null ? null : (map['pscEnabled'] as bool).input(),
    );
  }
}

