// ignore_for_file: unused_element, unnecessary_cast

import 'incident_info_response.dart';
import 'system_data_response.dart';
import 'user_info_response.dart';

/// Result data returned by getBookmark.
class GetBookmarkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The time the bookmark was created
  final String? created;
  /// Describes a user that created the bookmark
  final UserInfoResponse? createdBy;
  /// The display name of the bookmark
  final String displayName;
  /// Etag of the azure resource
  final String? etag;
  /// The bookmark event time
  final String? eventTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Describes an incident that relates to bookmark
  final IncidentInfoResponse? incidentInfo;
  /// List of labels relevant to this bookmark
  final List<String>? labels;
  /// The name of the resource
  final String name;
  /// The notes of the bookmark
  final String? notes;
  /// The query of the bookmark.
  final String query;
  /// The end time for the query
  final String? queryEndTime;
  /// The query result of the bookmark.
  final String? queryResult;
  /// The start time for the query
  final String? queryStartTime;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The last time the bookmark was updated
  final String? updated;
  /// Describes a user that updated the bookmark
  final UserInfoResponse? updatedBy;

  /// Creates a new [GetBookmarkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [created] The time the bookmark was created
  /// [createdBy] Describes a user that created the bookmark
  /// [displayName] The display name of the bookmark
  /// [etag] Etag of the azure resource
  /// [eventTime] The bookmark event time
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [incidentInfo] Describes an incident that relates to bookmark
  /// [labels] List of labels relevant to this bookmark
  /// [name] The name of the resource
  /// [notes] The notes of the bookmark
  /// [query] The query of the bookmark.
  /// [queryEndTime] The end time for the query
  /// [queryResult] The query result of the bookmark.
  /// [queryStartTime] The start time for the query
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updated] The last time the bookmark was updated
  /// [updatedBy] Describes a user that updated the bookmark
  GetBookmarkResult({
    required this.azureApiVersion,
    this.created,
    this.createdBy,
    required this.displayName,
    this.etag,
    this.eventTime,
    required this.id,
    this.incidentInfo,
    this.labels,
    required this.name,
    this.notes,
    required this.query,
    this.queryEndTime,
    this.queryResult,
    this.queryStartTime,
    required this.systemData,
    required this.type,
    this.updated,
    this.updatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'created': ?created,
      'createdBy': ?createdBy?.toMap(),
      'displayName': displayName,
      'etag': ?etag,
      'eventTime': ?eventTime,
      'id': id,
      'incidentInfo': ?incidentInfo?.toMap(),
      'labels': ?labels,
      'name': name,
      'notes': ?notes,
      'query': query,
      'queryEndTime': ?queryEndTime,
      'queryResult': ?queryResult,
      'queryStartTime': ?queryStartTime,
      'systemData': systemData.toMap(),
      'type': type,
      'updated': ?updated,
      'updatedBy': ?updatedBy?.toMap(),
    };
  }

  factory GetBookmarkResult.fromMap(Map<String, dynamic> map) {
    return GetBookmarkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return UserInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: map['displayName'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventTime: (() { final guardedValue = map['eventTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      incidentInfo: (() { final guardedValue = map['incidentInfo']; if (guardedValue == null) return null; return IncidentInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: map['name'] as String,
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      query: map['query'] as String,
      queryEndTime: (() { final guardedValue = map['queryEndTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryResult: (() { final guardedValue = map['queryResult']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryStartTime: (() { final guardedValue = map['queryStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return UserInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

