// ignore_for_file: unused_element, unnecessary_cast

import 'system_assigned_service_identity_response.dart';
import 'system_data_response.dart';
import 'test_base_account_skuresponse.dart';

/// Result data returned by getTestBaseAccount.
class GetTestBaseAccountResult {
  /// The access level of the Test Base Account.
  final String accessLevel;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The identity of the testBaseAccount.
  final SystemAssignedServiceIdentityResponse? identity;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// The provisioning state of the resource.
  final String provisioningState;

  /// The SKU of the Test Base Account.
  final TestBaseAccountSKUResponse sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetTestBaseAccountResult].
  /// [accessLevel] The access level of the Test Base Account.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The identity of the testBaseAccount.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [sku] The SKU of the Test Base Account.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetTestBaseAccountResult({
    required this.accessLevel,
    required this.azureApiVersion,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': accessLevel,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetTestBaseAccountResult.fromMap(Map<String, dynamic> map) {
    return GetTestBaseAccountResult(
      accessLevel: map['accessLevel'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return SystemAssignedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sku: TestBaseAccountSKUResponse.fromMap(
        (map['sku']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
