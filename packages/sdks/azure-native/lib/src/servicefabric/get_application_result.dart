// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_upgrade_policy_response.dart';
import 'application_user_assigned_identity_response.dart';
import 'managed_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Describes the managed identities for an Azure resource.
  final ManagedIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// List of user assigned identities for the application, each mapped to a friendly name.
  final List<ApplicationUserAssignedIdentityResponse>? managedIdentities;
  /// The name of the resource
  final String name;
  /// List of application parameters with overridden values from their default values specified in the application manifest.
  final Map<String, String>? parameters;
  /// The current deployment or provisioning state, which only appears in the response
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Describes the policy for a monitored application upgrade.
  final ApplicationUpgradePolicyResponse? upgradePolicy;
  /// The version of the application type as defined in the application manifest.
  /// This name must be the full Arm Resource ID for the referenced application type version.
  final String? version;

  /// Creates a new [GetApplicationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Describes the managed identities for an Azure resource.
  /// [location] The geo-location where the resource lives
  /// [managedIdentities] List of user assigned identities for the application, each mapped to a friendly name.
  /// [name] The name of the resource
  /// [parameters] List of application parameters with overridden values from their default values specified in the application manifest.
  /// [provisioningState] The current deployment or provisioning state, which only appears in the response
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [upgradePolicy] Describes the policy for a monitored application upgrade.
  /// [version] The version of the application type as defined in the application manifest.
  GetApplicationResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    this.managedIdentities,
    required this.name,
    this.parameters,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    this.upgradePolicy,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'managedIdentities': ?managedIdentities == null ? null : pulumi.Input.encodeList<ApplicationUserAssignedIdentityResponse, Map<String, dynamic>>(managedIdentities!, (value) => value.toMap()),
      'name': name,
      'parameters': ?parameters,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'upgradePolicy': ?upgradePolicy == null ? null : upgradePolicy!.toMap(),
      'version': ?version,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      managedIdentities: map['managedIdentities'] == null ? null : pulumi.Input.decodeList<ApplicationUserAssignedIdentityResponse>(map['managedIdentities']!, (value) => ApplicationUserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters']! as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      upgradePolicy: map['upgradePolicy'] == null ? null : ApplicationUpgradePolicyResponse.fromMap((map['upgradePolicy']! as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version']! as String,
    );
  }
}

