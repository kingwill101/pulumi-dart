// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'key_set_user_response.dart';
import 'key_set_user_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBareMetalMachineKeySet.
class GetBareMetalMachineKeySetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The object ID of Azure Active Directory group that all users in the list must be in for access to be granted. Users that are not in the group will not have access.
  final String azureGroupId;
  /// The more detailed status of the key set.
  final String detailedStatus;
  /// The descriptive message about the current detailed status.
  final String detailedStatusMessage;
  /// Resource ETag.
  final String etag;
  /// The date and time after which the users in this key set will be removed from the bare metal machines.
  final String expiration;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The list of IP addresses of jump hosts with management network access from which a login will be allowed for the users.
  final List<String> jumpHostsAllowed;
  /// The last time this key set was validated.
  final String lastValidation;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The name of the group that users will be assigned to on the operating system of the machines.
  final String? osGroupName;
  /// The access level allowed for the users in this key set.
  final String privilegeLevel;
  /// The provisioning state of the bare metal machine key set.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The unique list of permitted users.
  final List<KeySetUserResponse> userList;
  /// The status evaluation of each user.
  final List<KeySetUserStatusResponse> userListStatus;

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
  GetBareMetalMachineKeySetResult({
    required this.azureApiVersion,
    required this.azureGroupId,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.etag,
    required this.expiration,
    required this.extendedLocation,
    required this.id,
    required this.jumpHostsAllowed,
    required this.lastValidation,
    required this.location,
    required this.name,
    this.osGroupName,
    required this.privilegeLevel,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.userList,
    required this.userListStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureGroupId': azureGroupId,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'etag': etag,
      'expiration': expiration,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'jumpHostsAllowed': jumpHostsAllowed,
      'lastValidation': lastValidation,
      'location': location,
      'name': name,
      'osGroupName': ?osGroupName,
      'privilegeLevel': privilegeLevel,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'userList': pulumi.Input.encodeList<KeySetUserResponse, Map<String, dynamic>>(userList, (value) => value.toMap()),
      'userListStatus': pulumi.Input.encodeList<KeySetUserStatusResponse, Map<String, dynamic>>(userListStatus, (value) => value.toMap()),
    };
  }

  factory GetBareMetalMachineKeySetResult.fromMap(Map<String, dynamic> map) {
    return GetBareMetalMachineKeySetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureGroupId: map['azureGroupId'] as String,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      etag: map['etag'] as String,
      expiration: map['expiration'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      jumpHostsAllowed: (map['jumpHostsAllowed'] as List).cast<String>(),
      lastValidation: map['lastValidation'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      osGroupName: (() { final guardedValue = map['osGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privilegeLevel: map['privilegeLevel'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      userList: pulumi.Input.decodeList<KeySetUserResponse>(map['userList']!, (value) => KeySetUserResponse.fromMap((value as Map).cast<String, dynamic>())),
      userListStatus: pulumi.Input.decodeList<KeySetUserStatusResponse>(map['userListStatus']!, (value) => KeySetUserStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

