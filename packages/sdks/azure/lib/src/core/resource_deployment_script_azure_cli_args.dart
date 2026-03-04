// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_deployment_script_azure_cli_container.dart';
import 'resource_deployment_script_azure_cli_environment_variable.dart';
import 'resource_deployment_script_azure_cli_identity.dart';
import 'resource_deployment_script_azure_cli_storage_account.dart';

/// {@template pulumi_core_resource_deployment_script_azure_cli_resource_deployment_script_azure_cli_args_doc}
/// The set of arguments for ResourceDeploymentScriptAzureCli.
/// {@endtemplate}
/// {@macro pulumi_core_resource_deployment_script_azure_cli_resource_deployment_script_azure_cli_args_doc}
class ResourceDeploymentScriptAzureCliArgs {
  /// Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are `Always`, `OnExpiration`, `OnSuccess`. Defaults to `Always`. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? cleanupPreference;

  /// Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? commandLine;

  /// A `container` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<ResourceDeploymentScriptAzureCliContainer>? container;

  /// An `environment_variable` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<List<ResourceDeploymentScriptAzureCliEnvironmentVariable>>?
  environmentVariables;

  /// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? forceUpdateTag;

  /// An `identity` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<ResourceDeploymentScriptAzureCliIdentity>? identity;

  /// Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? name;

  /// Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? primaryScriptUri;

  /// Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between `1` hour and `26` hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String> retentionInterval;

  /// Script body. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? scriptContent;

  /// A `storage_account` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<ResourceDeploymentScriptAzureCliStorageAccount>?
  storageAccount;

  /// Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<List<String>>? supportingScriptUris;

  /// A mapping of tags which should be assigned to the Resource Deployment Script.
  final pulumi.Input<Map<String, String>>? tags;

  /// Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to `P1D`. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? timeout;

  /// Specifies the version of the Azure CLI that should be used in the format `X.Y.Z` (e.g. `2.30.0`). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-cli/tags/list). Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String> version;

  /// Creates a new [ResourceDeploymentScriptAzureCliArgs].
  /// [cleanupPreference] Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are `Always`, `OnExpiration`, `OnSuccess`. Defaults to `Always`. Changing this forces a new Resource Deployment Script to be created.
  /// [commandLine] Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
  /// [container] A `container` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [environmentVariables] An `environment_variable` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [forceUpdateTag] Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [location] Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  /// [name] Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created.
  /// [primaryScriptUri] Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  /// [retentionInterval] Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between `1` hour and `26` hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created.
  /// [scriptContent] Script body. Changing this forces a new Resource Deployment Script to be created.
  /// [storageAccount] A `storage_account` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [supportingScriptUris] Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
  /// [tags] A mapping of tags which should be assigned to the Resource Deployment Script.
  /// [timeout] Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to `P1D`. Changing this forces a new Resource Deployment Script to be created.
  /// [version] Specifies the version of the Azure CLI that should be used in the format `X.Y.Z` (e.g. `2.30.0`). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-cli/tags/list). Changing this forces a new Resource Deployment Script to be created.
  ResourceDeploymentScriptAzureCliArgs({
    this.cleanupPreference,
    this.commandLine,
    this.container,
    this.environmentVariables,
    this.forceUpdateTag,
    this.identity,
    this.location,
    this.name,
    this.primaryScriptUri,
    required this.resourceGroupName,
    required this.retentionInterval,
    this.scriptContent,
    this.storageAccount,
    this.supportingScriptUris,
    this.tags,
    this.timeout,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupPreference': ?cleanupPreference,
      'commandLine': ?commandLine,
      'container':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceDeploymentScriptAzureCliContainer,
            Map<String, dynamic>
          >(container, (value) => value.toMap()),
      'environmentVariables':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceDeploymentScriptAzureCliEnvironmentVariable>,
            List<Map<String, dynamic>>
          >(
            environmentVariables,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceDeploymentScriptAzureCliEnvironmentVariable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'forceUpdateTag': ?forceUpdateTag,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceDeploymentScriptAzureCliIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'primaryScriptUri': ?primaryScriptUri,
      'resourceGroupName': resourceGroupName,
      'retentionInterval': retentionInterval,
      'scriptContent': ?scriptContent,
      'storageAccount':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceDeploymentScriptAzureCliStorageAccount,
            Map<String, dynamic>
          >(storageAccount, (value) => value.toMap()),
      'supportingScriptUris': ?supportingScriptUris,
      'tags': ?tags,
      'timeout': ?timeout,
      'version': version,
    };
  }

  factory ResourceDeploymentScriptAzureCliArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceDeploymentScriptAzureCliArgs(
      cleanupPreference: (() {
        final guardedValue = map['cleanupPreference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      commandLine: (() {
        final guardedValue = map['commandLine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      container: (() {
        final guardedValue = map['container'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceDeploymentScriptAzureCliContainer.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      environmentVariables: (() {
        final guardedValue = map['environmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ResourceDeploymentScriptAzureCliEnvironmentVariable
          >(
            guardedValue,
            (value) =>
                ResourceDeploymentScriptAzureCliEnvironmentVariable.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      forceUpdateTag: (() {
        final guardedValue = map['forceUpdateTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceDeploymentScriptAzureCliIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryScriptUri: (() {
        final guardedValue = map['primaryScriptUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      retentionInterval: pulumi.Input.fromValue(
        map['retentionInterval'] as String,
      ),
      scriptContent: (() {
        final guardedValue = map['scriptContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccount: (() {
        final guardedValue = map['storageAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceDeploymentScriptAzureCliStorageAccount.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      supportingScriptUris: (() {
        final guardedValue = map['supportingScriptUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
