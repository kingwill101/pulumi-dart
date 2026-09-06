// ignore_for_file: unused_element, unnecessary_cast

import 'pre_release_access_request_spec_response.dart';
import 'system_data_response.dart';

/// Result data returned by getActionRequest.
class GetActionRequestResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  final String? creationDate;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  final PreReleaseAccessRequestSpecResponse? preReleaseAccessRequestSpec;
  /// The provisioning state of the resource.
  final String? provisioningState;
  final String? requestType;
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetActionRequestResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] Optional.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [preReleaseAccessRequestSpec] Optional.
  /// [provisioningState] The provisioning state of the resource.
  /// [requestType] Optional.
  /// [status] Optional.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetActionRequestResult({
    this.azureApiVersion,
    this.creationDate,
    this.id,
    this.name,
    this.preReleaseAccessRequestSpec,
    this.provisioningState,
    this.requestType,
    this.status,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creationDate': ?creationDate,
      'id': ?id,
      'name': ?name,
      'preReleaseAccessRequestSpec': ?preReleaseAccessRequestSpec?.toMap(),
      'provisioningState': ?provisioningState,
      'requestType': ?requestType,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetActionRequestResult.fromMap(Map<String, dynamic> map) {
    return GetActionRequestResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preReleaseAccessRequestSpec: (() { final guardedValue = map['preReleaseAccessRequestSpec']; if (guardedValue == null) return null; return PreReleaseAccessRequestSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestType: (() { final guardedValue = map['requestType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
