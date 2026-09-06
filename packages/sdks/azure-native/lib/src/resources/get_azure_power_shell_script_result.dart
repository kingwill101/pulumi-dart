// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_configuration_response.dart';
import 'environment_variable_response.dart';
import 'managed_service_identity_response.dart';
import 'script_status_response.dart';
import 'storage_account_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAzurePowerShellScript.
class GetAzurePowerShellScriptResult {
  /// Command line arguments to pass to the script. Arguments are separated by spaces. ex: -Name blue* -Location 'West US 2'
  final String? arguments;
  /// Azure PowerShell module version to be used.
  final String? azPowerShellVersion;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
  final String? cleanupPreference;
  /// Container settings.
  final ContainerConfigurationResponse? containerSettings;
  /// The environment variables to pass over to the script.
  final List<EnvironmentVariableResponse>? environmentVariables;
  /// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID.
  final String? forceUpdateTag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Optional property. Managed identity to be used for this deployment script. Currently, only user-assigned MSI is supported.
  final ManagedServiceIdentityResponse? identity;
  /// Type of the script.
  /// Expected value is 'AzurePowerShell'.
  final String? kind;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// List of script outputs.
  final dynamic outputs;
  /// Uri for the script. This is the entry point for the external script.
  final String? primaryScriptUri;
  /// State of the script execution. This only appears in the response.
  final String? provisioningState;
  /// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. Duration is based on ISO 8601 pattern (for example P1D means one day).
  final String? retentionInterval;
  /// Script body.
  final String? scriptContent;
  /// Contains the results of script execution.
  final ScriptStatusResponse? status;
  /// Storage Account settings.
  final StorageAccountConfigurationResponse? storageAccountSettings;
  /// Supporting files for the external script.
  final List<String>? supportingScriptUris;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Maximum allowed script execution time specified in ISO 8601 format. Default value is P1D
  final String? timeout;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAzurePowerShellScriptResult].
  /// [arguments] Command line arguments to pass to the script. Arguments are separated by spaces. ex: -Name blue* -Location 'West US 2'
  /// [azPowerShellVersion] Azure PowerShell module version to be used.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cleanupPreference] The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
  /// [containerSettings] Container settings.
  /// [environmentVariables] The environment variables to pass over to the script.
  /// [forceUpdateTag] Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Optional property. Managed identity to be used for this deployment script. Currently, only user-assigned MSI is supported.
  /// [kind] Type of the script.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [outputs] List of script outputs.
  /// [primaryScriptUri] Uri for the script. This is the entry point for the external script.
  /// [provisioningState] State of the script execution. This only appears in the response.
  /// [retentionInterval] Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. Duration is based on ISO 8601 pattern (for example P1D means one day).
  /// [scriptContent] Script body.
  /// [status] Contains the results of script execution.
  /// [storageAccountSettings] Storage Account settings.
  /// [supportingScriptUris] Supporting files for the external script.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timeout] Maximum allowed script execution time specified in ISO 8601 format. Default value is P1D
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAzurePowerShellScriptResult({
    this.arguments,
    this.azPowerShellVersion,
    this.azureApiVersion,
    String? cleanupPreference,
    this.containerSettings,
    this.environmentVariables,
    this.forceUpdateTag,
    this.id,
    this.identity,
    this.kind,
    this.location,
    this.name,
    this.outputs,
    this.primaryScriptUri,
    this.provisioningState,
    this.retentionInterval,
    this.scriptContent,
    this.status,
    this.storageAccountSettings,
    this.supportingScriptUris,
    this.systemData,
    this.tags,
    String? timeout,
    this.type,
  }) : cleanupPreference = cleanupPreference ?? 'Always', timeout = timeout ?? 'P1D';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'azPowerShellVersion': ?azPowerShellVersion,
      'azureApiVersion': ?azureApiVersion,
      'cleanupPreference': ?cleanupPreference,
      'containerSettings': ?containerSettings?.toMap(),
      'environmentVariables': ?(() { final guardedValue = environmentVariables; if (guardedValue == null) return null; return pulumi.Input.encodeList<EnvironmentVariableResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'forceUpdateTag': ?forceUpdateTag,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'outputs': ?outputs,
      'primaryScriptUri': ?primaryScriptUri,
      'provisioningState': ?provisioningState,
      'retentionInterval': ?retentionInterval,
      'scriptContent': ?scriptContent,
      'status': ?status?.toMap(),
      'storageAccountSettings': ?storageAccountSettings?.toMap(),
      'supportingScriptUris': ?supportingScriptUris,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'timeout': ?timeout,
      'type': ?type,
    };
  }

  factory GetAzurePowerShellScriptResult.fromMap(Map<String, dynamic> map) {
    return GetAzurePowerShellScriptResult(
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azPowerShellVersion: (() { final guardedValue = map['azPowerShellVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cleanupPreference: (() { final guardedValue = map['cleanupPreference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerSettings: (() { final guardedValue = map['containerSettings']; if (guardedValue == null) return null; return ContainerConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentVariableResponse>(guardedValue, (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return guardedValue; })(),
      primaryScriptUri: (() { final guardedValue = map['primaryScriptUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionInterval: (() { final guardedValue = map['retentionInterval']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scriptContent: (() { final guardedValue = map['scriptContent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ScriptStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageAccountSettings: (() { final guardedValue = map['storageAccountSettings']; if (guardedValue == null) return null; return StorageAccountConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      supportingScriptUris: (() { final guardedValue = map['supportingScriptUris']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
