// ignore_for_file: unused_element, unnecessary_cast

import 'pre_release_access_request_spec_response.dart';
import 'system_data_response.dart';

/// Result data returned by getActionRequest.
class GetActionRequestResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String creationDate;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  final PreReleaseAccessRequestSpecResponse? preReleaseAccessRequestSpec;
  /// The provisioning state of the resource.
  final String provisioningState;
  final String requestType;
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetActionRequestResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] Required.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [preReleaseAccessRequestSpec] Optional.
  /// [provisioningState] The provisioning state of the resource.
  /// [requestType] Required.
  /// [status] Required.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetActionRequestResult({
    required this.azureApiVersion,
    required this.creationDate,
    required this.id,
    required this.name,
    this.preReleaseAccessRequestSpec,
    required this.provisioningState,
    required this.requestType,
    required this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationDate': creationDate,
      'id': id,
      'name': name,
      'preReleaseAccessRequestSpec': ?preReleaseAccessRequestSpec == null ? null : preReleaseAccessRequestSpec!.toMap(),
      'provisioningState': provisioningState,
      'requestType': requestType,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetActionRequestResult.fromMap(Map<String, dynamic> map) {
    return GetActionRequestResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationDate: map['creationDate'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      preReleaseAccessRequestSpec: map['preReleaseAccessRequestSpec'] == null ? null : PreReleaseAccessRequestSpecResponse.fromMap((map['preReleaseAccessRequestSpec'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      requestType: map['requestType'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

