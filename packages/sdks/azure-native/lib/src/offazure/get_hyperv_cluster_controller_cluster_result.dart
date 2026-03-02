// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_details_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHypervClusterControllerCluster.
class GetHypervClusterControllerClusterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the timestamp marking Hyper-V cluster creation.
  final String createdTimestamp;
  /// Gets the errors.
  final List<HealthErrorDetailsResponse> errors;
  /// Gets or sets the FQDN/IPAddress of the Hyper-V cluster.
  final String? fqdn;
  /// Gets the functional level of the Hyper-V cluster.
  final int functionalLevel;
  /// Gets or sets list of hosts (FQDN) currently being tracked by the cluster.
  final List<String>? hostFqdnList;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Gets or sets Run as account ID of the Hyper-V cluster.
  final String? runAsAccountId;
  /// Gets the status of the Hyper-V cluster.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Gets the timestamp marking last updated on the Hyper-V cluster.
  final String updatedTimestamp;

  /// Creates a new [GetHypervClusterControllerClusterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTimestamp] Gets the timestamp marking Hyper-V cluster creation.
  /// [errors] Gets the errors.
  /// [fqdn] Gets or sets the FQDN/IPAddress of the Hyper-V cluster.
  /// [functionalLevel] Gets the functional level of the Hyper-V cluster.
  /// [hostFqdnList] Gets or sets list of hosts (FQDN) currently being tracked by the cluster.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [runAsAccountId] Gets or sets Run as account ID of the Hyper-V cluster.
  /// [status] Gets the status of the Hyper-V cluster.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedTimestamp] Gets the timestamp marking last updated on the Hyper-V cluster.
  GetHypervClusterControllerClusterResult({
    required this.azureApiVersion,
    required this.createdTimestamp,
    required this.errors,
    this.fqdn,
    required this.functionalLevel,
    this.hostFqdnList,
    required this.id,
    required this.name,
    this.provisioningState,
    this.runAsAccountId,
    required this.status,
    required this.systemData,
    required this.type,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdTimestamp': createdTimestamp,
      'errors': pulumi.Input.encodeList<HealthErrorDetailsResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'fqdn': ?fqdn,
      'functionalLevel': functionalLevel,
      'hostFqdnList': ?hostFqdnList,
      'id': id,
      'name': name,
      'provisioningState': ?provisioningState,
      'runAsAccountId': ?runAsAccountId,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory GetHypervClusterControllerClusterResult.fromMap(Map<String, dynamic> map) {
    return GetHypervClusterControllerClusterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdTimestamp: map['createdTimestamp'] as String,
      errors: pulumi.Input.decodeList<HealthErrorDetailsResponse>(map['errors'], (value) => HealthErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      fqdn: map['fqdn'] == null ? null : map['fqdn']! as String,
      functionalLevel: map['functionalLevel'] as int,
      hostFqdnList: map['hostFqdnList'] == null ? null : (map['hostFqdnList']! as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState']! as String,
      runAsAccountId: map['runAsAccountId'] == null ? null : map['runAsAccountId']! as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
    );
  }
}

