// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_settings_ip_configuration_psc_config_psc_auto_connection.dart';

class DatabaseInstanceSettingsIpConfigurationPscConfig {
  /// List of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  final pulumi.Input<List<String>>? allowedConsumerProjects;
  /// Name of network attachment resource used to authorize a producer service to connect a PSC interface to the consumer's VPC. For example: "projects/myProject/regions/myRegion/networkAttachments/myNetworkAttachment". This is required to enable outbound connection on a PSC instance.
  final pulumi.Input<String>? networkAttachmentUri;
  /// Whether a service connection policy is created for the auto connections configured for the instance.
  final pulumi.Input<bool>? pscAutoConnectionPolicyEnabled;
  /// A comma-separated list of networks or a comma-separated list of network-project pairs. Each project in this list is represented by a project number (numeric) or by a project ID (alphanumeric). This allows Private Service Connect connections to be created automatically for the specified networks.
  final pulumi.Input<List<DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection>>? pscAutoConnections;
  /// Whether PSC auto DNS is enabled for this instance.
  final pulumi.Input<bool>? pscAutoDnsEnabled;
  /// Whether PSC connectivity is enabled for this instance.
  final pulumi.Input<bool>? pscEnabled;
  /// Whether PSC write endpoint DNS is enabled for this instance. This is only supported for Enterprise Plus edition instances.
  ///
  /// * `settings.ip_configuration.psc_config.psc_auto_connection_policy_enabled` - (Optional) Whether a service connection policy is created for the auto connections configured for the instance.
  final pulumi.Input<bool>? pscWriteEndpointDnsEnabled;

  /// Creates a new [DatabaseInstanceSettingsIpConfigurationPscConfig].
  /// [allowedConsumerProjects] List of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  /// [networkAttachmentUri] Name of network attachment resource used to authorize a producer service to connect a PSC interface to the consumer's VPC. For example: "projects/myProject/regions/myRegion/networkAttachments/myNetworkAttachment". This is required to enable outbound connection on a PSC instance.
  /// [pscAutoConnectionPolicyEnabled] Whether a service connection policy is created for the auto connections configured for the instance.
  /// [pscAutoConnections] A comma-separated list of networks or a comma-separated list of network-project pairs. Each project in this list is represented by a project number (numeric) or by a project ID (alphanumeric). This allows Private Service Connect connections to be created automatically for the specified networks.
  /// [pscAutoDnsEnabled] Whether PSC auto DNS is enabled for this instance.
  /// [pscEnabled] Whether PSC connectivity is enabled for this instance.
  /// [pscWriteEndpointDnsEnabled] Whether PSC write endpoint DNS is enabled for this instance. This is only supported for Enterprise Plus edition instances.
  const DatabaseInstanceSettingsIpConfigurationPscConfig({
    this.allowedConsumerProjects,
    this.networkAttachmentUri,
    this.pscAutoConnectionPolicyEnabled,
    this.pscAutoConnections,
    this.pscAutoDnsEnabled,
    this.pscEnabled,
    this.pscWriteEndpointDnsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedConsumerProjects': ?allowedConsumerProjects,
      'networkAttachmentUri': ?networkAttachmentUri,
      'pscAutoConnectionPolicyEnabled': ?pscAutoConnectionPolicyEnabled,
      'pscAutoConnections': ?pulumi.Input.mapOptionalInputValue<List<DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection>, List<Map<String, dynamic>>>(pscAutoConnections, (value) => pulumi.Input.encodeList<DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pscAutoDnsEnabled': ?pscAutoDnsEnabled,
      'pscEnabled': ?pscEnabled,
      'pscWriteEndpointDnsEnabled': ?pscWriteEndpointDnsEnabled,
    };
  }

  factory DatabaseInstanceSettingsIpConfigurationPscConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsIpConfigurationPscConfig(
      allowedConsumerProjects: (() { final guardedValue = map['allowedConsumerProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkAttachmentUri: (() { final guardedValue = map['networkAttachmentUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscAutoConnectionPolicyEnabled: (() { final guardedValue = map['pscAutoConnectionPolicyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pscAutoConnections: (() { final guardedValue = map['pscAutoConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection>(guardedValue, (value) => DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pscAutoDnsEnabled: (() { final guardedValue = map['pscAutoDnsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pscEnabled: (() { final guardedValue = map['pscEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pscWriteEndpointDnsEnabled: (() { final guardedValue = map['pscWriteEndpointDnsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
