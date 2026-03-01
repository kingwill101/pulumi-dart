// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_deployment_script_azure_cli_container.dart';
import 'resource_deployment_script_azure_cli_environment_variable.dart';
import 'resource_deployment_script_azure_cli_identity.dart';
import 'resource_deployment_script_azure_cli_storage_account.dart';

/// Input properties used for looking up and filtering ResourceDeploymentScriptAzureCli resources.
class ResourceDeploymentScriptAzureCliState {
  /// Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are `Always`, `OnExpiration`, `OnSuccess`. Defaults to `Always`. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? cleanupPreference;
  /// Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? commandLine;
  /// A `container` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<ResourceDeploymentScriptAzureCliContainer>? container;
  /// An `environment_variable` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<List<ResourceDeploymentScriptAzureCliEnvironmentVariable>>? environmentVariables;
  /// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? forceUpdateTag;
  /// An `identity` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<ResourceDeploymentScriptAzureCliIdentity>? identity;
  /// Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? name;
  /// List of script outputs.
  final pulumi.Input<String>? outputs;
  /// Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? primaryScriptUri;
  /// Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between `1` hour and `26` hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? retentionInterval;
  /// Script body. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? scriptContent;
  /// A `storage_account` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<ResourceDeploymentScriptAzureCliStorageAccount>? storageAccount;
  /// Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<List<String>>? supportingScriptUris;
  /// A mapping of tags which should be assigned to the Resource Deployment Script.
  final pulumi.Input<Map<String, String>>? tags;
  /// Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to `P1D`. Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? timeout;
  /// Specifies the version of the Azure CLI that should be used in the format `X.Y.Z` (e.g. `2.30.0`). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-cli/tags/list). Changing this forces a new Resource Deployment Script to be created.
  final pulumi.Input<String>? version;

  /// Creates a new [ResourceDeploymentScriptAzureCliState].
  /// [cleanupPreference] Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are `Always`, `OnExpiration`, `OnSuccess`. Defaults to `Always`. Changing this forces a new Resource Deployment Script to be created.
  /// [commandLine] Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
  /// [container] A `container` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [environmentVariables] An `environment_variable` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [forceUpdateTag] Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [location] Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  /// [name] Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created.
  /// [outputs] List of script outputs.
  /// [primaryScriptUri] Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  /// [retentionInterval] Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between `1` hour and `26` hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created.
  /// [scriptContent] Script body. Changing this forces a new Resource Deployment Script to be created.
  /// [storageAccount] A `storage_account` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  /// [supportingScriptUris] Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
  /// [tags] A mapping of tags which should be assigned to the Resource Deployment Script.
  /// [timeout] Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to `P1D`. Changing this forces a new Resource Deployment Script to be created.
  /// [version] Specifies the version of the Azure CLI that should be used in the format `X.Y.Z` (e.g. `2.30.0`). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-cli/tags/list). Changing this forces a new Resource Deployment Script to be created.
  ResourceDeploymentScriptAzureCliState({
    pulumi.Output<String>? cleanupPreference,
    pulumi.Output<String>? commandLine,
    pulumi.Output<ResourceDeploymentScriptAzureCliContainer>? container,
    pulumi.Output<List<ResourceDeploymentScriptAzureCliEnvironmentVariable>>? environmentVariables,
    pulumi.Output<String>? forceUpdateTag,
    pulumi.Output<ResourceDeploymentScriptAzureCliIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? outputs,
    pulumi.Output<String>? primaryScriptUri,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? retentionInterval,
    pulumi.Output<String>? scriptContent,
    pulumi.Output<ResourceDeploymentScriptAzureCliStorageAccount>? storageAccount,
    pulumi.Output<List<String>>? supportingScriptUris,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? timeout,
    pulumi.Output<String>? version,
  }) :
      cleanupPreference = pulumi.Input.asOptionalInput<String>(cleanupPreference),
      commandLine = pulumi.Input.asOptionalInput<String>(commandLine),
      container = pulumi.Input.asOptionalInput<ResourceDeploymentScriptAzureCliContainer>(container),
      environmentVariables = pulumi.Input.asOptionalInput<List<ResourceDeploymentScriptAzureCliEnvironmentVariable>>(environmentVariables),
      forceUpdateTag = pulumi.Input.asOptionalInput<String>(forceUpdateTag),
      identity = pulumi.Input.asOptionalInput<ResourceDeploymentScriptAzureCliIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputs = pulumi.Input.asOptionalInput<String>(outputs),
      primaryScriptUri = pulumi.Input.asOptionalInput<String>(primaryScriptUri),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      retentionInterval = pulumi.Input.asOptionalInput<String>(retentionInterval),
      scriptContent = pulumi.Input.asOptionalInput<String>(scriptContent),
      storageAccount = pulumi.Input.asOptionalInput<ResourceDeploymentScriptAzureCliStorageAccount>(storageAccount),
      supportingScriptUris = pulumi.Input.asOptionalInput<List<String>>(supportingScriptUris),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeout = pulumi.Input.asOptionalInput<String>(timeout),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupPreference': ?cleanupPreference,
      'commandLine': ?commandLine,
      'container': ?pulumi.Input.mapOptionalInputValue<ResourceDeploymentScriptAzureCliContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<ResourceDeploymentScriptAzureCliEnvironmentVariable>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<ResourceDeploymentScriptAzureCliEnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceUpdateTag': ?forceUpdateTag,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceDeploymentScriptAzureCliIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'outputs': ?outputs,
      'primaryScriptUri': ?primaryScriptUri,
      'resourceGroupName': ?resourceGroupName,
      'retentionInterval': ?retentionInterval,
      'scriptContent': ?scriptContent,
      'storageAccount': ?pulumi.Input.mapOptionalInputValue<ResourceDeploymentScriptAzureCliStorageAccount, Map<String, dynamic>>(storageAccount, (value) => value.toMap()),
      'supportingScriptUris': ?supportingScriptUris,
      'tags': ?tags,
      'timeout': ?timeout,
      'version': ?version,
    };
  }

  factory ResourceDeploymentScriptAzureCliState.fromMap(Map<String, dynamic> map) {
    return ResourceDeploymentScriptAzureCliState(
      cleanupPreference: map['cleanupPreference'] == null ? null : pulumi.Output.create<String>(map['cleanupPreference'] as String),
      commandLine: map['commandLine'] == null ? null : pulumi.Output.create<String>(map['commandLine'] as String),
      container: map['container'] == null ? null : pulumi.Output.create<ResourceDeploymentScriptAzureCliContainer>(ResourceDeploymentScriptAzureCliContainer.fromMap((map['container'] as Map).cast<String, dynamic>())),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Output.create<List<ResourceDeploymentScriptAzureCliEnvironmentVariable>>(pulumi.Input.decodeList<ResourceDeploymentScriptAzureCliEnvironmentVariable>(map['environmentVariables'], (value) => ResourceDeploymentScriptAzureCliEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : pulumi.Output.create<String>(map['forceUpdateTag'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceDeploymentScriptAzureCliIdentity>(ResourceDeploymentScriptAzureCliIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outputs: map['outputs'] == null ? null : pulumi.Output.create<String>(map['outputs'] as String),
      primaryScriptUri: map['primaryScriptUri'] == null ? null : pulumi.Output.create<String>(map['primaryScriptUri'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retentionInterval: map['retentionInterval'] == null ? null : pulumi.Output.create<String>(map['retentionInterval'] as String),
      scriptContent: map['scriptContent'] == null ? null : pulumi.Output.create<String>(map['scriptContent'] as String),
      storageAccount: map['storageAccount'] == null ? null : pulumi.Output.create<ResourceDeploymentScriptAzureCliStorageAccount>(ResourceDeploymentScriptAzureCliStorageAccount.fromMap((map['storageAccount'] as Map).cast<String, dynamic>())),
      supportingScriptUris: map['supportingScriptUris'] == null ? null : pulumi.Output.create<List<String>>((map['supportingScriptUris'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<String>(map['timeout'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

