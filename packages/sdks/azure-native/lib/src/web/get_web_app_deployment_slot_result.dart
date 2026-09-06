// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebAppDeploymentSlot.
class GetWebAppDeploymentSlotResult {
  /// True if deployment is currently active, false if completed and null if not started.
  final bool? active;
  /// Who authored the deployment.
  final String? author;
  /// Author email.
  final String? authorEmail;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Who performed the deployment.
  final String? deployer;
  /// Details on deployment.
  final String? details;
  /// End time.
  final String? endTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// Details about deployment status.
  final String? message;
  /// The name of the resource
  final String? name;
  /// Start time.
  final String? startTime;
  /// Deployment status.
  final int? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWebAppDeploymentSlotResult].
  /// [active] True if deployment is currently active, false if completed and null if not started.
  /// [author] Who authored the deployment.
  /// [authorEmail] Author email.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deployer] Who performed the deployment.
  /// [details] Details on deployment.
  /// [endTime] End time.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [message] Details about deployment status.
  /// [name] The name of the resource
  /// [startTime] Start time.
  /// [status] Deployment status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWebAppDeploymentSlotResult({
    this.active,
    this.author,
    this.authorEmail,
    this.azureApiVersion,
    this.deployer,
    this.details,
    this.endTime,
    this.id,
    this.kind,
    this.message,
    this.name,
    this.startTime,
    this.status,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'author': ?author,
      'authorEmail': ?authorEmail,
      'azureApiVersion': ?azureApiVersion,
      'deployer': ?deployer,
      'details': ?details,
      'endTime': ?endTime,
      'id': ?id,
      'kind': ?kind,
      'message': ?message,
      'name': ?name,
      'startTime': ?startTime,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetWebAppDeploymentSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppDeploymentSlotResult(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authorEmail: (() { final guardedValue = map['authorEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployer: (() { final guardedValue = map['deployer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
