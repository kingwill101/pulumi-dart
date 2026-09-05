// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_deployment_script_power_shell_container.dart';
import 'resource_deployment_script_power_shell_environment_variable.dart';
import 'resource_deployment_script_power_shell_identity.dart';
import 'resource_deployment_script_power_shell_storage_account.dart';

/// Input properties used for looking up and filtering ResourceDeploymentScriptPowerShell resources.
class ResourceDeploymentScriptPowerShellState {
  /// Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are `Always`, `OnExpiration`, `OnSuccess`. Defaults to `Always`. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String?>? cleanupPreference;
  /// Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String?>? commandLine;
  /// A `container` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<ResourceDeploymentScriptPowerShellContainer?>? container;
  /// An `environmentVariable` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<List<ResourceDeploymentScriptPowerShellEnvironmentVariable>?>? environmentVariables;
  /// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String?>? forceUpdateTag;
  /// An `identity` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<ResourceDeploymentScriptPowerShellIdentity?>? identity;
  /// Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String?>? name;
  /// List of script outputs.
  final pulumi.Input<String?>? outputs;
  /// Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String?>? primaryScriptUri;
  /// Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between `1` hour and `26` hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String?>? retentionInterval;
  /// Script body. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String?>? scriptContent;
  /// A `storageAccount` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<ResourceDeploymentScriptPowerShellStorageAccount?>? storageAccount;
  /// Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<List<String>?>? supportingScriptUris;
  /// A mapping of tags which should be assigned to the Resource Deployment Script.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to `P1D`. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String?>? timeout;
  /// Specifies the version of the Azure PowerShell that should be used in the format `X.Y` (e.g. `9.7`). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-powershell/tags/list). Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String?>? version;

  /// Creates a new [ResourceDeploymentScriptPowerShellState].
  /// [cleanupPreference] Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are `Always`, `OnExpiration`, `OnSuccess`. Defaults to `Always`. Changing this forces a new Resource Deployment Script to be created.
  /// [commandLine] Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
  /// [container] A `container` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [environmentVariables] An `environmentVariable` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [forceUpdateTag] Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [location] Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  /// [name] Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created.
  /// [outputs] List of script outputs.
  /// [primaryScriptUri] Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  /// [retentionInterval] Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between `1` hour and `26` hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created.
  /// [scriptContent] Script body. Changing this forces a new Resource Deployment Script to be created.
  /// [storageAccount] A `storageAccount` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [supportingScriptUris] Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
  /// [tags] A mapping of tags which should be assigned to the Resource Deployment Script.
  /// [timeout] Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to `P1D`. Changing this forces a new Resource Deployment Script to be created.
  /// [version] Specifies the version of the Azure PowerShell that should be used in the format `X.Y` (e.g. `9.7`). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-powershell/tags/list). Changing this forces a new Resource Deployment Script to be created.
  const ResourceDeploymentScriptPowerShellState({
    this.cleanupPreference,
    this.commandLine,
    this.container,
    this.environmentVariables,
    this.forceUpdateTag,
    this.identity,
    this.location,
    this.name,
    this.outputs,
    this.primaryScriptUri,
    this.resourceGroupName,
    this.retentionInterval,
    this.scriptContent,
    this.storageAccount,
    this.supportingScriptUris,
    this.tags,
    this.timeout,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupPreference': ?cleanupPreference,
      'commandLine': ?commandLine,
      'container': ?pulumi.Input.mapOptionalInputValue<ResourceDeploymentScriptPowerShellContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<ResourceDeploymentScriptPowerShellEnvironmentVariable>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<ResourceDeploymentScriptPowerShellEnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceUpdateTag': ?forceUpdateTag,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceDeploymentScriptPowerShellIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'outputs': ?outputs,
      'primaryScriptUri': ?primaryScriptUri,
      'resourceGroupName': ?resourceGroupName,
      'retentionInterval': ?retentionInterval,
      'scriptContent': ?scriptContent,
      'storageAccount': ?pulumi.Input.mapOptionalInputValue<ResourceDeploymentScriptPowerShellStorageAccount, Map<String, dynamic>>(storageAccount, (value) => value.toMap()),
      'supportingScriptUris': ?supportingScriptUris,
      'tags': ?tags,
      'timeout': ?timeout,
      'version': ?version,
    };
  }

  factory ResourceDeploymentScriptPowerShellState.fromMap(Map<String, dynamic> map) {
    return ResourceDeploymentScriptPowerShellState(
      cleanupPreference: (() { final guardedValue = map['cleanupPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commandLine: (() { final guardedValue = map['commandLine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceDeploymentScriptPowerShellContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceDeploymentScriptPowerShellEnvironmentVariable>(guardedValue, (value) => ResourceDeploymentScriptPowerShellEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceDeploymentScriptPowerShellIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryScriptUri: (() { final guardedValue = map['primaryScriptUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionInterval: (() { final guardedValue = map['retentionInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptContent: (() { final guardedValue = map['scriptContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccount: (() { final guardedValue = map['storageAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceDeploymentScriptPowerShellStorageAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportingScriptUris: (() { final guardedValue = map['supportingScriptUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
