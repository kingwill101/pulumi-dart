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
  final String azPowerShellVersion;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
  final String? cleanupPreference;

  /// Container settings.
  final ContainerConfigurationResponse? containerSettings;

  /// The environment variables to pass over to the script.
  final List<EnvironmentVariableResponse>? environmentVariables;

  /// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID.
  final String? forceUpdateTag;

  /// String Id used to locate any resource on Azure.
  final String id;

  /// Optional property. Managed identity to be used for this deployment script. Currently, only user-assigned MSI is supported.
  final ManagedServiceIdentityResponse? identity;

  /// Type of the script.
  /// Expected value is 'AzurePowerShell'.
  final String kind;

  /// The location of the ACI and the storage account for the deployment script.
  final String location;

  /// Name of this resource.
  final String name;

  /// List of script outputs.
  final Map<String, dynamic> outputs;

  /// Uri for the script. This is the entry point for the external script.
  final String? primaryScriptUri;

  /// State of the script execution. This only appears in the response.
  final String provisioningState;

  /// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. Duration is based on ISO 8601 pattern (for example P1D means one day).
  final String retentionInterval;

  /// Script body.
  final String? scriptContent;

  /// Contains the results of script execution.
  final ScriptStatusResponse status;

  /// Storage Account settings.
  final StorageAccountConfigurationResponse? storageAccountSettings;

  /// Supporting files for the external script.
  final List<String>? supportingScriptUris;

  /// The system metadata related to this resource.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Maximum allowed script execution time specified in ISO 8601 format. Default value is P1D
  final String? timeout;

  /// Type of this resource.
  final String type;

  /// Creates a new [GetAzurePowerShellScriptResult].
  /// [arguments] Command line arguments to pass to the script. Arguments are separated by spaces. ex: -Name blue* -Location 'West US 2'
  /// [azPowerShellVersion] Azure PowerShell module version to be used.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cleanupPreference] The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
  /// [containerSettings] Container settings.
  /// [environmentVariables] The environment variables to pass over to the script.
  /// [forceUpdateTag] Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID.
  /// [id] String Id used to locate any resource on Azure.
  /// [identity] Optional property. Managed identity to be used for this deployment script. Currently, only user-assigned MSI is supported.
  /// [kind] Type of the script.
  /// [location] The location of the ACI and the storage account for the deployment script.
  /// [name] Name of this resource.
  /// [outputs] List of script outputs.
  /// [primaryScriptUri] Uri for the script. This is the entry point for the external script.
  /// [provisioningState] State of the script execution. This only appears in the response.
  /// [retentionInterval] Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. Duration is based on ISO 8601 pattern (for example P1D means one day).
  /// [scriptContent] Script body.
  /// [status] Contains the results of script execution.
  /// [storageAccountSettings] Storage Account settings.
  /// [supportingScriptUris] Supporting files for the external script.
  /// [systemData] The system metadata related to this resource.
  /// [tags] Resource tags.
  /// [timeout] Maximum allowed script execution time specified in ISO 8601 format. Default value is P1D
  /// [type] Type of this resource.
  GetAzurePowerShellScriptResult({
    this.arguments,
    required this.azPowerShellVersion,
    required this.azureApiVersion,
    this.cleanupPreference,
    this.containerSettings,
    this.environmentVariables,
    this.forceUpdateTag,
    required this.id,
    this.identity,
    required this.kind,
    required this.location,
    required this.name,
    required this.outputs,
    this.primaryScriptUri,
    required this.provisioningState,
    required this.retentionInterval,
    this.scriptContent,
    required this.status,
    this.storageAccountSettings,
    this.supportingScriptUris,
    required this.systemData,
    this.tags,
    this.timeout,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'azPowerShellVersion': azPowerShellVersion,
      'azureApiVersion': azureApiVersion,
      'cleanupPreference': ?cleanupPreference,
      'containerSettings': ?containerSettings?.toMap(),
      'environmentVariables': ?(() {
        final guardedValue = environmentVariables;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          EnvironmentVariableResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'forceUpdateTag': ?forceUpdateTag,
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': kind,
      'location': location,
      'name': name,
      'outputs': outputs,
      'primaryScriptUri': ?primaryScriptUri,
      'provisioningState': provisioningState,
      'retentionInterval': retentionInterval,
      'scriptContent': ?scriptContent,
      'status': status.toMap(),
      'storageAccountSettings': ?storageAccountSettings?.toMap(),
      'supportingScriptUris': ?supportingScriptUris,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeout': ?timeout,
      'type': type,
    };
  }

  factory GetAzurePowerShellScriptResult.fromMap(Map<String, dynamic> map) {
    return GetAzurePowerShellScriptResult(
      arguments: (() {
        final guardedValue = map['arguments'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azPowerShellVersion: map['azPowerShellVersion'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      cleanupPreference: (() {
        final guardedValue = map['cleanupPreference'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      containerSettings: (() {
        final guardedValue = map['containerSettings'];
        if (guardedValue == null) return null;
        return ContainerConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      environmentVariables: (() {
        final guardedValue = map['environmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<EnvironmentVariableResponse>(
          guardedValue,
          (value) => EnvironmentVariableResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      forceUpdateTag: (() {
        final guardedValue = map['forceUpdateTag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      outputs: (map['outputs'] as Map).cast<String, dynamic>(),
      primaryScriptUri: (() {
        final guardedValue = map['primaryScriptUri'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      retentionInterval: map['retentionInterval'] as String,
      scriptContent: (() {
        final guardedValue = map['scriptContent'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: ScriptStatusResponse.fromMap(
        (map['status']! as Map).cast<String, dynamic>(),
      ),
      storageAccountSettings: (() {
        final guardedValue = map['storageAccountSettings'];
        if (guardedValue == null) return null;
        return StorageAccountConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      supportingScriptUris: (() {
        final guardedValue = map['supportingScriptUris'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
