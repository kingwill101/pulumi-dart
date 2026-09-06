// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_encryption_configuration_response.dart';

/// The properties of an online experimentation workspace.
class OnlineExperimentationWorkspacePropertiesResponse {
  /// The resource identifier of App Configuration with which this online experimentation workspace is tied for experimentation. This is a required field for creating an online experimentation workspace.
  final pulumi.Input<String> appConfigurationResourceId;
  /// The encryption configuration for the online experimentation workspace resource.
  final pulumi.Input<ResourceEncryptionConfigurationResponse?>? encryption;
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
  const OnlineExperimentationWorkspacePropertiesResponse({
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
      appConfigurationResourceId: pulumi.Input.fromValue(map['appConfigurationResourceId'] as String),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceEncryptionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      logAnalyticsWorkspaceResourceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceResourceId'] as String),
      logsExporterStorageAccountResourceId: pulumi.Input.fromValue(map['logsExporterStorageAccountResourceId'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
