// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_info.dart';
import 'user_info.dart';

/// {@template pulumi_securityinsights_bookmark_args_doc}
/// The set of arguments for Bookmark.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_bookmark_args_doc}
class BookmarkArgs {
  /// Bookmark ID
  final pulumi.Input<String?>? bookmarkId;
  /// The time the bookmark was created
  final pulumi.Input<String?>? created;
  /// Describes a user that created the bookmark
  final pulumi.Input<UserInfo?>? createdBy;
  /// The display name of the bookmark
  final pulumi.Input<String> displayName;
  /// The bookmark event time
  final pulumi.Input<String?>? eventTime;
  /// Describes an incident that relates to bookmark
  final pulumi.Input<IncidentInfo?>? incidentInfo;
  /// List of labels relevant to this bookmark
  final pulumi.Input<List<String>?>? labels;
  /// The notes of the bookmark
  final pulumi.Input<String?>? notes;
  /// The query of the bookmark.
  final pulumi.Input<String> query;
  /// The end time for the query
  final pulumi.Input<String?>? queryEndTime;
  /// The query result of the bookmark.
  final pulumi.Input<String?>? queryResult;
  /// The start time for the query
  final pulumi.Input<String?>? queryStartTime;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The last time the bookmark was updated
  final pulumi.Input<String?>? updated;
  /// Describes a user that updated the bookmark
  final pulumi.Input<UserInfo?>? updatedBy;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [BookmarkArgs].
  /// [bookmarkId] Bookmark ID
  /// [created] The time the bookmark was created
  /// [createdBy] Describes a user that created the bookmark
  /// [displayName] The display name of the bookmark
  /// [eventTime] The bookmark event time
  /// [incidentInfo] Describes an incident that relates to bookmark
  /// [labels] List of labels relevant to this bookmark
  /// [notes] The notes of the bookmark
  /// [query] The query of the bookmark.
  /// [queryEndTime] The end time for the query
  /// [queryResult] The query result of the bookmark.
  /// [queryStartTime] The start time for the query
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [updated] The last time the bookmark was updated
  /// [updatedBy] Describes a user that updated the bookmark
  /// [workspaceName] The name of the workspace.
  const BookmarkArgs({
    this.bookmarkId,
    this.created,
    this.createdBy,
    required this.displayName,
    this.eventTime,
    this.incidentInfo,
    this.labels,
    this.notes,
    required this.query,
    this.queryEndTime,
    this.queryResult,
    this.queryStartTime,
    required this.resourceGroupName,
    this.updated,
    this.updatedBy,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookmarkId': ?bookmarkId,
      'created': ?created,
      'createdBy': ?pulumi.Input.mapOptionalInputValue<UserInfo, Map<String, dynamic>>(createdBy, (value) => value.toMap()),
      'displayName': displayName,
      'eventTime': ?eventTime,
      'incidentInfo': ?pulumi.Input.mapOptionalInputValue<IncidentInfo, Map<String, dynamic>>(incidentInfo, (value) => value.toMap()),
      'labels': ?labels,
      'notes': ?notes,
      'query': query,
      'queryEndTime': ?queryEndTime,
      'queryResult': ?queryResult,
      'queryStartTime': ?queryStartTime,
      'resourceGroupName': resourceGroupName,
      'updated': ?updated,
      'updatedBy': ?pulumi.Input.mapOptionalInputValue<UserInfo, Map<String, dynamic>>(updatedBy, (value) => value.toMap()),
      'workspaceName': workspaceName,
    };
  }

  factory BookmarkArgs.fromMap(Map<String, dynamic> map) {
    return BookmarkArgs(
      bookmarkId: (() { final guardedValue = map['bookmarkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      eventTime: (() { final guardedValue = map['eventTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incidentInfo: (() { final guardedValue = map['incidentInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IncidentInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      queryEndTime: (() { final guardedValue = map['queryEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryResult: (() { final guardedValue = map['queryResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryStartTime: (() { final guardedValue = map['queryStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
