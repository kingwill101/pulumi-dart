// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'storage_services_for_put_request_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The account's data-plane ID. This can be set only when connecting an existing classic account
  final String? accountId;
  /// The account's name
  final String? accountName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Gets the status of the account at the time the operation was called.
  final String? provisioningState;
  /// The storage services details
  final StorageServicesForPutRequestResponse? storageServices;
  /// The system meta data relating to this resource.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The account's tenant id
  final String? tenantId;
  /// An integer representing the total seconds that have been indexed on the account
  final int? totalSecondsIndexed;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAccountResult].
  /// [accountId] The account's data-plane ID. This can be set only when connecting an existing classic account
  /// [accountName] The account's name
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Gets the status of the account at the time the operation was called.
  /// [storageServices] The storage services details
  /// [systemData] The system meta data relating to this resource.
  /// [tags] Resource tags.
  /// [tenantId] The account's tenant id
  /// [totalSecondsIndexed] An integer representing the total seconds that have been indexed on the account
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAccountResult({
    String? accountId,
    this.accountName,
    this.azureApiVersion,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.provisioningState,
    this.storageServices,
    this.systemData,
    this.tags,
    this.tenantId,
    this.totalSecondsIndexed,
    this.type,
  }) : accountId = accountId ?? '00000000-0000-0000-0000-000000000000';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': ?accountName,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'storageServices': ?storageServices?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tenantId': ?tenantId,
      'totalSecondsIndexed': ?totalSecondsIndexed,
      'type': ?type,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageServices: (() { final guardedValue = map['storageServices']; if (guardedValue == null) return null; return StorageServicesForPutRequestResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalSecondsIndexed: (() { final guardedValue = map['totalSecondsIndexed']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
