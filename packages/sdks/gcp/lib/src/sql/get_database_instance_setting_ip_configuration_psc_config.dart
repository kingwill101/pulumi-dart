// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instance_setting_ip_configuration_psc_config_psc_auto_connection.dart';

class GetDatabaseInstanceSettingIpConfigurationPscConfig {
  /// List of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  final pulumi.Input<List<String>> allowedConsumerProjects;

  /// Name of network attachment resource used to authorize a producer service to connect a PSC interface to the consumer's VPC. For example: "projects/myProject/regions/myRegion/networkAttachments/myNetworkAttachment". This is required to enable outbound connection on a PSC instance.
  final pulumi.Input<String> networkAttachmentUri;

  /// A comma-separated list of networks or a comma-separated list of network-project pairs. Each project in this list is represented by a project number (numeric) or by a project ID (alphanumeric). This allows Private Service Connect connections to be created automatically for the specified networks.
  final pulumi.Input<
    List<GetDatabaseInstanceSettingIpConfigurationPscConfigPscAutoConnection>
  >
  pscAutoConnections;

  /// Whether PSC connectivity is enabled for this instance.
  final pulumi.Input<bool> pscEnabled;

  /// Creates a new [GetDatabaseInstanceSettingIpConfigurationPscConfig].
  /// [allowedConsumerProjects] List of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  /// [networkAttachmentUri] Name of network attachment resource used to authorize a producer service to connect a PSC interface to the consumer's VPC. For example: "projects/myProject/regions/myRegion/networkAttachments/myNetworkAttachment". This is required to enable outbound connection on a PSC instance.
  /// [pscAutoConnections] A comma-separated list of networks or a comma-separated list of network-project pairs. Each project in this list is represented by a project number (numeric) or by a project ID (alphanumeric). This allows Private Service Connect connections to be created automatically for the specified networks.
  /// [pscEnabled] Whether PSC connectivity is enabled for this instance.
  GetDatabaseInstanceSettingIpConfigurationPscConfig({
    required this.allowedConsumerProjects,
    required this.networkAttachmentUri,
    required this.pscAutoConnections,
    required this.pscEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedConsumerProjects': allowedConsumerProjects,
      'networkAttachmentUri': networkAttachmentUri,
      'pscAutoConnections':
          pulumi.Input.mapInputValue<
            List<
              GetDatabaseInstanceSettingIpConfigurationPscConfigPscAutoConnection
            >,
            List<Map<String, dynamic>>
          >(
            pscAutoConnections,
            (value) =>
                pulumi.Input.encodeList<
                  GetDatabaseInstanceSettingIpConfigurationPscConfigPscAutoConnection,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'pscEnabled': pscEnabled,
    };
  }

  factory GetDatabaseInstanceSettingIpConfigurationPscConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstanceSettingIpConfigurationPscConfig(
      allowedConsumerProjects: pulumi.Input.fromValue(
        (map['allowedConsumerProjects'] as List).cast<String>(),
      ),
      networkAttachmentUri: pulumi.Input.fromValue(
        map['networkAttachmentUri'] as String,
      ),
      pscAutoConnections: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDatabaseInstanceSettingIpConfigurationPscConfigPscAutoConnection
        >(
          map['pscAutoConnections']!,
          (value) =>
              GetDatabaseInstanceSettingIpConfigurationPscConfigPscAutoConnection.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      pscEnabled: pulumi.Input.fromValue(map['pscEnabled'] as bool),
    );
  }
}
