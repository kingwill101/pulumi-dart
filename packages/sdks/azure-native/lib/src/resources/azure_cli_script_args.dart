// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_configuration.dart';
import 'environment_variable.dart';
import 'managed_service_identity.dart';
import 'storage_account_configuration.dart';

/// {@template pulumi_resources_azure_cli_script_args_doc}
/// The set of arguments for AzureCliScript.
/// {@endtemplate}
/// {@macro pulumi_resources_azure_cli_script_args_doc}
class AzureCliScriptArgs {
  /// Command line arguments to pass to the script. Arguments are separated by spaces. ex: -Name blue* -Location 'West US 2'
  final pulumi.Input<String>? arguments;
  /// Azure CLI module version to be used.
  final pulumi.Input<String> azCliVersion;
  /// The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
  final pulumi.Input<String>? cleanupPreference;
  /// Container settings.
  final pulumi.Input<ContainerConfiguration>? containerSettings;
  /// The environment variables to pass over to the script.
  final pulumi.Input<List<EnvironmentVariable>>? environmentVariables;
  /// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID.
  final pulumi.Input<String>? forceUpdateTag;
  /// Optional property. Managed identity to be used for this deployment script. Currently, only user-assigned MSI is supported.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Type of the script.
  /// Expected value is 'AzureCLI'.
  final pulumi.Input<String> kind;
  /// The location of the ACI and the storage account for the deployment script.
  final pulumi.Input<String>? location;
  /// Uri for the script. This is the entry point for the external script.
  final pulumi.Input<String>? primaryScriptUri;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. Duration is based on ISO 8601 pattern (for example P1D means one day).
  final pulumi.Input<String> retentionInterval;
  /// Script body.
  final pulumi.Input<String>? scriptContent;
  /// Name of the deployment script.
  final pulumi.Input<String>? scriptName;
  /// Storage Account settings.
  final pulumi.Input<StorageAccountConfiguration>? storageAccountSettings;
  /// Supporting files for the external script.
  final pulumi.Input<List<String>>? supportingScriptUris;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Maximum allowed script execution time specified in ISO 8601 format. Default value is P1D
  final pulumi.Input<String>? timeout;

  /// Creates a new [AzureCliScriptArgs].
  /// [arguments] Command line arguments to pass to the script. Arguments are separated by spaces. ex: -Name blue* -Location 'West US 2'
  /// [azCliVersion] Azure CLI module version to be used.
  /// [cleanupPreference] The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
  /// [containerSettings] Container settings.
  /// [environmentVariables] The environment variables to pass over to the script.
  /// [forceUpdateTag] Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID.
  /// [identity] Optional property. Managed identity to be used for this deployment script. Currently, only user-assigned MSI is supported.
  /// [kind] Type of the script.
  /// [location] The location of the ACI and the storage account for the deployment script.
  /// [primaryScriptUri] Uri for the script. This is the entry point for the external script.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [retentionInterval] Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. Duration is based on ISO 8601 pattern (for example P1D means one day).
  /// [scriptContent] Script body.
  /// [scriptName] Name of the deployment script.
  /// [storageAccountSettings] Storage Account settings.
  /// [supportingScriptUris] Supporting files for the external script.
  /// [tags] Resource tags.
  /// [timeout] Maximum allowed script execution time specified in ISO 8601 format. Default value is P1D
  AzureCliScriptArgs({
    this.arguments,
    required this.azCliVersion,
    this.cleanupPreference,
    this.containerSettings,
    this.environmentVariables,
    this.forceUpdateTag,
    this.identity,
    required this.kind,
    this.location,
    this.primaryScriptUri,
    required this.resourceGroupName,
    required this.retentionInterval,
    this.scriptContent,
    this.scriptName,
    this.storageAccountSettings,
    this.supportingScriptUris,
    this.tags,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'azCliVersion': azCliVersion,
      'cleanupPreference': ?cleanupPreference,
      'containerSettings': ?pulumi.Input.mapOptionalInputValue<ContainerConfiguration, Map<String, dynamic>>(containerSettings, (value) => value.toMap()),
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariable>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceUpdateTag': ?forceUpdateTag,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': kind,
      'location': ?location,
      'primaryScriptUri': ?primaryScriptUri,
      'resourceGroupName': resourceGroupName,
      'retentionInterval': retentionInterval,
      'scriptContent': ?scriptContent,
      'scriptName': ?scriptName,
      'storageAccountSettings': ?pulumi.Input.mapOptionalInputValue<StorageAccountConfiguration, Map<String, dynamic>>(storageAccountSettings, (value) => value.toMap()),
      'supportingScriptUris': ?supportingScriptUris,
      'tags': ?tags,
      'timeout': ?timeout,
    };
  }

  factory AzureCliScriptArgs.fromMap(Map<String, dynamic> map) {
    return AzureCliScriptArgs(
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azCliVersion: pulumi.Input.fromValue(map['azCliVersion'] as String),
      cleanupPreference: (() { final guardedValue = map['cleanupPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerSettings: (() { final guardedValue = map['containerSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVariable>(guardedValue, (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryScriptUri: (() { final guardedValue = map['primaryScriptUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retentionInterval: pulumi.Input.fromValue(map['retentionInterval'] as String),
      scriptContent: (() { final guardedValue = map['scriptContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountSettings: (() { final guardedValue = map['storageAccountSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageAccountConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportingScriptUris: (() { final guardedValue = map['supportingScriptUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

