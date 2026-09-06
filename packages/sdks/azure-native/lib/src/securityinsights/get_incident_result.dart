// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_additional_data_response.dart';
import 'incident_label_response.dart';
import 'incident_owner_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIncident.
class GetIncidentResult {
  /// Additional data on the incident
  final IncidentAdditionalDataResponse? additionalData;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The reason the incident was closed
  final String? classification;
  /// Describes the reason the incident was closed
  final String? classificationComment;
  /// The classification reason the incident was closed with
  final String? classificationReason;
  /// The time the incident was created
  final String? createdTimeUtc;
  /// The description of the incident
  final String? description;
  /// Etag of the azure resource
  final String? etag;
  /// The time of the first activity in the incident
  final String? firstActivityTimeUtc;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// A sequential number
  final int? incidentNumber;
  /// The deep-link url to the incident in Azure portal
  final String? incidentUrl;
  /// List of labels relevant to this incident
  final List<IncidentLabelResponse>? labels;
  /// The time of the last activity in the incident
  final String? lastActivityTimeUtc;
  /// The last time the incident was updated
  final String? lastModifiedTimeUtc;
  /// The name of the resource
  final String? name;
  /// Describes a user that the incident is assigned to
  final IncidentOwnerInfoResponse? owner;
  /// The incident ID assigned by the incident provider
  final String? providerIncidentId;
  /// The name of the source provider that generated the incident
  final String? providerName;
  /// List of resource ids of Analytic rules related to the incident
  final List<String>? relatedAnalyticRuleIds;
  /// The severity of the incident
  final String? severity;
  /// The status of the incident
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The title of the incident
  final String? title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetIncidentResult].
  /// [additionalData] Additional data on the incident
  /// [azureApiVersion] The Azure API version of the resource.
  /// [classification] The reason the incident was closed
  /// [classificationComment] Describes the reason the incident was closed
  /// [classificationReason] The classification reason the incident was closed with
  /// [createdTimeUtc] The time the incident was created
  /// [description] The description of the incident
  /// [etag] Etag of the azure resource
  /// [firstActivityTimeUtc] The time of the first activity in the incident
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [incidentNumber] A sequential number
  /// [incidentUrl] The deep-link url to the incident in Azure portal
  /// [labels] List of labels relevant to this incident
  /// [lastActivityTimeUtc] The time of the last activity in the incident
  /// [lastModifiedTimeUtc] The last time the incident was updated
  /// [name] The name of the resource
  /// [owner] Describes a user that the incident is assigned to
  /// [providerIncidentId] The incident ID assigned by the incident provider
  /// [providerName] The name of the source provider that generated the incident
  /// [relatedAnalyticRuleIds] List of resource ids of Analytic rules related to the incident
  /// [severity] The severity of the incident
  /// [status] The status of the incident
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [title] The title of the incident
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetIncidentResult({
    this.additionalData,
    this.azureApiVersion,
    this.classification,
    this.classificationComment,
    this.classificationReason,
    this.createdTimeUtc,
    this.description,
    this.etag,
    this.firstActivityTimeUtc,
    this.id,
    this.incidentNumber,
    this.incidentUrl,
    this.labels,
    this.lastActivityTimeUtc,
    this.lastModifiedTimeUtc,
    this.name,
    this.owner,
    this.providerIncidentId,
    this.providerName,
    this.relatedAnalyticRuleIds,
    this.severity,
    this.status,
    this.systemData,
    this.title,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'classification': ?classification,
      'classificationComment': ?classificationComment,
      'classificationReason': ?classificationReason,
      'createdTimeUtc': ?createdTimeUtc,
      'description': ?description,
      'etag': ?etag,
      'firstActivityTimeUtc': ?firstActivityTimeUtc,
      'id': ?id,
      'incidentNumber': ?incidentNumber,
      'incidentUrl': ?incidentUrl,
      'labels': ?(() { final guardedValue = labels; if (guardedValue == null) return null; return pulumi.Input.encodeList<IncidentLabelResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'lastActivityTimeUtc': ?lastActivityTimeUtc,
      'lastModifiedTimeUtc': ?lastModifiedTimeUtc,
      'name': ?name,
      'owner': ?owner?.toMap(),
      'providerIncidentId': ?providerIncidentId,
      'providerName': ?providerName,
      'relatedAnalyticRuleIds': ?relatedAnalyticRuleIds,
      'severity': ?severity,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'title': ?title,
      'type': ?type,
    };
  }

  factory GetIncidentResult.fromMap(Map<String, dynamic> map) {
    return GetIncidentResult(
      additionalData: (() { final guardedValue = map['additionalData']; if (guardedValue == null) return null; return IncidentAdditionalDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      classification: (() { final guardedValue = map['classification']; if (guardedValue == null) return null; return guardedValue as String; })(),
      classificationComment: (() { final guardedValue = map['classificationComment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      classificationReason: (() { final guardedValue = map['classificationReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTimeUtc: (() { final guardedValue = map['createdTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstActivityTimeUtc: (() { final guardedValue = map['firstActivityTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      incidentNumber: (() { final guardedValue = map['incidentNumber']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      incidentUrl: (() { final guardedValue = map['incidentUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IncidentLabelResponse>(guardedValue, (value) => IncidentLabelResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      lastActivityTimeUtc: (() { final guardedValue = map['lastActivityTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTimeUtc: (() { final guardedValue = map['lastModifiedTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return IncidentOwnerInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      providerIncidentId: (() { final guardedValue = map['providerIncidentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relatedAnalyticRuleIds: (() { final guardedValue = map['relatedAnalyticRuleIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
