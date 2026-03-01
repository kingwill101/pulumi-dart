// ignore_for_file: unused_element, unnecessary_cast

import 'resource_encryption_configuration.dart';

/// The properties of an online experimentation workspace.
class OnlineExperimentationWorkspaceProperties {
  /// The resource identifier of App Configuration with which this online experimentation workspace is tied for experimentation. This is a required field for creating an online experimentation workspace.
  final String appConfigurationResourceId;
  /// The encryption configuration for the online experimentation workspace resource.
  final ResourceEncryptionConfiguration? encryption;
  /// The resource identifier of the Log Analytics workspace which online experimentation workspace uses for generating experiment analysis results.
  final String logAnalyticsWorkspaceResourceId;
  /// The resource identifier of storage account where logs are exported from Log Analytics workspace. online experimentation workspace uses it generating experiment analysis results.
  final String logsExporterStorageAccountResourceId;

  /// Creates a new [OnlineExperimentationWorkspaceProperties].
  /// [appConfigurationResourceId] The resource identifier of App Configuration with which this online experimentation workspace is tied for experimentation. This is a required field for creating an online experimentation workspace.
  /// [encryption] The encryption configuration for the online experimentation workspace resource.
  /// [logAnalyticsWorkspaceResourceId] The resource identifier of the Log Analytics workspace which online experimentation workspace uses for generating experiment analysis results.
  /// [logsExporterStorageAccountResourceId] The resource identifier of storage account where logs are exported from Log Analytics workspace. online experimentation workspace uses it generating experiment analysis results.
  OnlineExperimentationWorkspaceProperties({
    required this.appConfigurationResourceId,
    this.encryption,
    required this.logAnalyticsWorkspaceResourceId,
    required this.logsExporterStorageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConfigurationResourceId': appConfigurationResourceId,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'logAnalyticsWorkspaceResourceId': logAnalyticsWorkspaceResourceId,
      'logsExporterStorageAccountResourceId': logsExporterStorageAccountResourceId,
    };
  }

  factory OnlineExperimentationWorkspaceProperties.fromMap(Map<String, dynamic> map) {
    return OnlineExperimentationWorkspaceProperties(
      appConfigurationResourceId: map['appConfigurationResourceId'] as String,
      encryption: map['encryption'] == null ? null : ResourceEncryptionConfiguration.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      logAnalyticsWorkspaceResourceId: map['logAnalyticsWorkspaceResourceId'] as String,
      logsExporterStorageAccountResourceId: map['logsExporterStorageAccountResourceId'] as String,
    );
  }
}

