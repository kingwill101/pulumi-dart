// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_encryption_configuration_response.dart';

/// The properties of an online experimentation workspace.
class OnlineExperimentationWorkspacePropertiesResponse {
  /// The resource identifier of App Configuration with which this online experimentation workspace is tied for experimentation. This is a required field for creating an online experimentation workspace.
  final pulumi.Input<String> appConfigurationResourceId;
  /// The encryption configuration for the online experimentation workspace resource.
  final pulumi.Input<ResourceEncryptionConfigurationResponse>? encryption;
  /// The data plane endpoint for the online experimentation workspace resource.
  final pulumi.Input<String> endpoint;
  /// The resource identifier of the Log Analytics workspace which online experimentation workspace uses for generating experiment analysis results.
  final pulumi.Input<String> logAnalyticsWorkspaceResourceId;
  /// The resource identifier of storage account where logs are exported from Log Analytics workspace. online experimentation workspace uses it generating experiment analysis results.
  final pulumi.Input<String> logsExporterStorageAccountResourceId;
  /// The provisioning state for the resource
  final pulumi.Input<String> provisioningState;
  /// The Id of the workspace.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [OnlineExperimentationWorkspacePropertiesResponse].
  /// [appConfigurationResourceId] The resource identifier of App Configuration with which this online experimentation workspace is tied for experimentation. This is a required field for creating an online experimentation workspace.
  /// [encryption] The encryption configuration for the online experimentation workspace resource.
  /// [endpoint] The data plane endpoint for the online experimentation workspace resource.
  /// [logAnalyticsWorkspaceResourceId] The resource identifier of the Log Analytics workspace which online experimentation workspace uses for generating experiment analysis results.
  /// [logsExporterStorageAccountResourceId] The resource identifier of storage account where logs are exported from Log Analytics workspace. online experimentation workspace uses it generating experiment analysis results.
  /// [provisioningState] The provisioning state for the resource
  /// [workspaceId] The Id of the workspace.
  OnlineExperimentationWorkspacePropertiesResponse({
    required this.appConfigurationResourceId,
    this.encryption,
    required this.endpoint,
    required this.logAnalyticsWorkspaceResourceId,
    required this.logsExporterStorageAccountResourceId,
    required this.provisioningState,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConfigurationResourceId': appConfigurationResourceId,
      'encryption': ?pulumi.Input.mapOptionalInputValue<ResourceEncryptionConfigurationResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'endpoint': endpoint,
      'logAnalyticsWorkspaceResourceId': logAnalyticsWorkspaceResourceId,
      'logsExporterStorageAccountResourceId': logsExporterStorageAccountResourceId,
      'provisioningState': provisioningState,
      'workspaceId': workspaceId,
    };
  }

  factory OnlineExperimentationWorkspacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OnlineExperimentationWorkspacePropertiesResponse(
      appConfigurationResourceId: (map['appConfigurationResourceId'] as String).input(),
      encryption: map['encryption'] == null ? null : (ResourceEncryptionConfigurationResponse.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      endpoint: (map['endpoint'] as String).input(),
      logAnalyticsWorkspaceResourceId: (map['logAnalyticsWorkspaceResourceId'] as String).input(),
      logsExporterStorageAccountResourceId: (map['logsExporterStorageAccountResourceId'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

