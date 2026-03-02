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
      arguments: map['arguments'] == null ? null : (map['arguments']! as String).input(),
      azCliVersion: (map['azCliVersion'] as String).input(),
      cleanupPreference: map['cleanupPreference'] == null ? null : (map['cleanupPreference']! as String).input(),
      containerSettings: map['containerSettings'] == null ? null : (ContainerConfiguration.fromMap((map['containerSettings']! as Map).cast<String, dynamic>())).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (pulumi.Input.decodeList<EnvironmentVariable>(map['environmentVariables']!, (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : (map['forceUpdateTag']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      kind: (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      primaryScriptUri: map['primaryScriptUri'] == null ? null : (map['primaryScriptUri']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      retentionInterval: (map['retentionInterval'] as String).input(),
      scriptContent: map['scriptContent'] == null ? null : (map['scriptContent']! as String).input(),
      scriptName: map['scriptName'] == null ? null : (map['scriptName']! as String).input(),
      storageAccountSettings: map['storageAccountSettings'] == null ? null : (StorageAccountConfiguration.fromMap((map['storageAccountSettings']! as Map).cast<String, dynamic>())).input(),
      supportingScriptUris: map['supportingScriptUris'] == null ? null : ((map['supportingScriptUris']! as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

