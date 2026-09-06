// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_encryption_configuration.dart';

/// The properties of an online experimentation workspace.
class OnlineExperimentationWorkspaceProperties {
  /// The resource identifier of App Configuration with which this online experimentation workspace is tied for experimentation. This is a required field for creating an online experimentation workspace.
  final pulumi.Input<String> appConfigurationResourceId;
  /// The encryption configuration for the online experimentation workspace resource.
  final pulumi.Input<ResourceEncryptionConfiguration?>? encryption;
  /// The resource identifier of the Log Analytics workspace which online experimentation workspace uses for generating experiment analysis results.
  final pulumi.Input<String> logAnalyticsWorkspaceResourceId;
  /// The resource identifier of storage account where logs are exported from Log Analytics workspace. online experimentation workspace uses it generating experiment analysis results.
  final pulumi.Input<String> logsExporterStorageAccountResourceId;

  /// Creates a new [OnlineExperimentationWorkspaceProperties].
  /// [appConfigurationResourceId] The resource identifier of App Configuration with which this online experimentation workspace is tied for experimentation. This is a required field for creating an online experimentation workspace.
  /// [encryption] The encryption configuration for the online experimentation workspace resource.
  /// [logAnalyticsWorkspaceResourceId] The resource identifier of the Log Analytics workspace which online experimentation workspace uses for generating experiment analysis results.
  /// [logsExporterStorageAccountResourceId] The resource identifier of storage account where logs are exported from Log Analytics workspace. online experimentation workspace uses it generating experiment analysis results.
  const OnlineExperimentationWorkspaceProperties({
    required this.appConfigurationResourceId,
    this.encryption,
    required this.logAnalyticsWorkspaceResourceId,
    required this.logsExporterStorageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConfigurationResourceId': appConfigurationResourceId,
      'encryption': ?pulumi.Input.mapOptionalInputValue<ResourceEncryptionConfiguration, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'logAnalyticsWorkspaceResourceId': logAnalyticsWorkspaceResourceId,
      'logsExporterStorageAccountResourceId': logsExporterStorageAccountResourceId,
    };
  }

  factory OnlineExperimentationWorkspaceProperties.fromMap(Map<String, dynamic> map) {
    return OnlineExperimentationWorkspaceProperties(
      appConfigurationResourceId: pulumi.Input.fromValue(map['appConfigurationResourceId'] as String),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalyticsWorkspaceResourceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceResourceId'] as String),
      logsExporterStorageAccountResourceId: pulumi.Input.fromValue(map['logsExporterStorageAccountResourceId'] as String),
    );
  }
}
