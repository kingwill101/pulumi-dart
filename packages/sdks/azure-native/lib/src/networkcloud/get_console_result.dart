// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'ssh_public_key_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConsole.
class GetConsoleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The more detailed status of the console.
  final String? detailedStatus;
  /// The descriptive message about the current detailed status.
  final String? detailedStatusMessage;
  /// The indicator of whether the console access is enabled.
  final String? enabled;
  /// Resource ETag.
  final String? etag;
  /// The date and time after which the key will be disallowed access.
  final String? expiration;
  /// The extended location of the cluster manager associated with the cluster this virtual machine is created on.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The resource ID of the private link service that is used to provide virtual machine console access.
  final String? privateLinkServiceId;
  /// The provisioning state of the virtual machine console.
  final String? provisioningState;
  /// The SSH public key that will be provisioned for user access. The user is expected to have the corresponding SSH private key for logging in.
  final SshPublicKeyResponse? sshPublicKey;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The unique identifier for the virtual machine that is used to access the console.
  final String? virtualMachineAccessId;

  /// Creates a new [GetConsoleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [detailedStatus] The more detailed status of the console.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [enabled] The indicator of whether the console access is enabled.
  /// [etag] Resource ETag.
  /// [expiration] The date and time after which the key will be disallowed access.
  /// [extendedLocation] The extended location of the cluster manager associated with the cluster this virtual machine is created on.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [privateLinkServiceId] The resource ID of the private link service that is used to provide virtual machine console access.
  /// [provisioningState] The provisioning state of the virtual machine console.
  /// [sshPublicKey] The SSH public key that will be provisioned for user access. The user is expected to have the corresponding SSH private key for logging in.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachineAccessId] The unique identifier for the virtual machine that is used to access the console.
  const GetConsoleResult({
    this.azureApiVersion,
    this.detailedStatus,
    this.detailedStatusMessage,
    this.enabled,
    this.etag,
    this.expiration,
    this.extendedLocation,
    this.id,
    this.location,
    this.name,
    this.privateLinkServiceId,
    this.provisioningState,
    this.sshPublicKey,
    this.systemData,
    this.tags,
    this.type,
    this.virtualMachineAccessId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'detailedStatus': ?detailedStatus,
      'detailedStatusMessage': ?detailedStatusMessage,
      'enabled': ?enabled,
      'etag': ?etag,
      'expiration': ?expiration,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'privateLinkServiceId': ?privateLinkServiceId,
      'provisioningState': ?provisioningState,
      'sshPublicKey': ?sshPublicKey?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'virtualMachineAccessId': ?virtualMachineAccessId,
    };
  }

  factory GetConsoleResult.fromMap(Map<String, dynamic> map) {
    return GetConsoleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatus: (() { final guardedValue = map['detailedStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatusMessage: (() { final guardedValue = map['detailedStatusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkServiceId: (() { final guardedValue = map['privateLinkServiceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sshPublicKey: (() { final guardedValue = map['sshPublicKey']; if (guardedValue == null) return null; return SshPublicKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachineAccessId: (() { final guardedValue = map['virtualMachineAccessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
