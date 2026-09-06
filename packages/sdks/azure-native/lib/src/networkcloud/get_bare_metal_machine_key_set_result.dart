// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'key_set_user_response.dart';
import 'key_set_user_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBareMetalMachineKeySet.
class GetBareMetalMachineKeySetResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The object ID of Azure Active Directory group that all users in the list must be in for access to be granted. Users that are not in the group will not have access.
  final String? azureGroupId;
  /// The more detailed status of the key set.
  final String? detailedStatus;
  /// The descriptive message about the current detailed status.
  final String? detailedStatusMessage;
  /// Resource ETag.
  final String? etag;
  /// The date and time after which the users in this key set will be removed from the bare metal machines.
  final String? expiration;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The list of IP addresses of jump hosts with management network access from which a login will be allowed for the users.
  final List<String>? jumpHostsAllowed;
  /// The last time this key set was validated.
  final String? lastValidation;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The name of the group that users will be assigned to on the operating system of the machines.
  final String? osGroupName;
  /// The access level allowed for the users in this key set.
  final String? privilegeLevel;
  /// The provisioning state of the bare metal machine key set.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The unique list of permitted users.
  final List<KeySetUserResponse>? userList;
  /// The status evaluation of each user.
  final List<KeySetUserStatusResponse>? userListStatus;

  /// Creates a new [GetBareMetalMachineKeySetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureGroupId] The object ID of Azure Active Directory group that all users in the list must be in for access to be granted. Users that are not in the group will not have access.
  /// [detailedStatus] The more detailed status of the key set.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [expiration] The date and time after which the users in this key set will be removed from the bare metal machines.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [jumpHostsAllowed] The list of IP addresses of jump hosts with management network access from which a login will be allowed for the users.
  /// [lastValidation] The last time this key set was validated.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [osGroupName] The name of the group that users will be assigned to on the operating system of the machines.
  /// [privilegeLevel] The access level allowed for the users in this key set.
  /// [provisioningState] The provisioning state of the bare metal machine key set.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userList] The unique list of permitted users.
  /// [userListStatus] The status evaluation of each user.
  const GetBareMetalMachineKeySetResult({
    this.azureApiVersion,
    this.azureGroupId,
    this.detailedStatus,
    this.detailedStatusMessage,
    this.etag,
    this.expiration,
    this.extendedLocation,
    this.id,
    this.jumpHostsAllowed,
    this.lastValidation,
    this.location,
    this.name,
    this.osGroupName,
    this.privilegeLevel,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.userList,
    this.userListStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'azureGroupId': ?azureGroupId,
      'detailedStatus': ?detailedStatus,
      'detailedStatusMessage': ?detailedStatusMessage,
      'etag': ?etag,
      'expiration': ?expiration,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'jumpHostsAllowed': ?jumpHostsAllowed,
      'lastValidation': ?lastValidation,
      'location': ?location,
      'name': ?name,
      'osGroupName': ?osGroupName,
      'privilegeLevel': ?privilegeLevel,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'userList': ?(() { final guardedValue = userList; if (guardedValue == null) return null; return pulumi.Input.encodeList<KeySetUserResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userListStatus': ?(() { final guardedValue = userListStatus; if (guardedValue == null) return null; return pulumi.Input.encodeList<KeySetUserStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBareMetalMachineKeySetResult.fromMap(Map<String, dynamic> map) {
    return GetBareMetalMachineKeySetResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureGroupId: (() { final guardedValue = map['azureGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatus: (() { final guardedValue = map['detailedStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatusMessage: (() { final guardedValue = map['detailedStatusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jumpHostsAllowed: (() { final guardedValue = map['jumpHostsAllowed']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      lastValidation: (() { final guardedValue = map['lastValidation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osGroupName: (() { final guardedValue = map['osGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privilegeLevel: (() { final guardedValue = map['privilegeLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userList: (() { final guardedValue = map['userList']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeySetUserResponse>(guardedValue, (value) => KeySetUserResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      userListStatus: (() { final guardedValue = map['userListStatus']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeySetUserStatusResponse>(guardedValue, (value) => KeySetUserStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
