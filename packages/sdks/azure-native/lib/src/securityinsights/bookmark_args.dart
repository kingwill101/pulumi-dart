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
  final pulumi.Input<String>? bookmarkId;
  /// The time the bookmark was created
  final pulumi.Input<String>? created;
  /// Describes a user that created the bookmark
  final pulumi.Input<UserInfo>? createdBy;
  /// The display name of the bookmark
  final pulumi.Input<String> displayName;
  /// The bookmark event time
  final pulumi.Input<String>? eventTime;
  /// Describes an incident that relates to bookmark
  final pulumi.Input<IncidentInfo>? incidentInfo;
  /// List of labels relevant to this bookmark
  final pulumi.Input<List<String>>? labels;
  /// The notes of the bookmark
  final pulumi.Input<String>? notes;
  /// The query of the bookmark.
  final pulumi.Input<String> query;
  /// The end time for the query
  final pulumi.Input<String>? queryEndTime;
  /// The query result of the bookmark.
  final pulumi.Input<String>? queryResult;
  /// The start time for the query
  final pulumi.Input<String>? queryStartTime;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The last time the bookmark was updated
  final pulumi.Input<String>? updated;
  /// Describes a user that updated the bookmark
  final pulumi.Input<UserInfo>? updatedBy;
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
  BookmarkArgs({
    pulumi.Output<String>? bookmarkId,
    pulumi.Output<String>? created,
    pulumi.Output<UserInfo>? createdBy,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? eventTime,
    pulumi.Output<IncidentInfo>? incidentInfo,
    pulumi.Output<List<String>>? labels,
    pulumi.Output<String>? notes,
    required pulumi.Output<String> query,
    pulumi.Output<String>? queryEndTime,
    pulumi.Output<String>? queryResult,
    pulumi.Output<String>? queryStartTime,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? updated,
    pulumi.Output<UserInfo>? updatedBy,
    required pulumi.Output<String> workspaceName,
  }) :
      bookmarkId = pulumi.Input.asOptionalInput<String>(bookmarkId),
      created = pulumi.Input.asOptionalInput<String>(created),
      createdBy = pulumi.Input.asOptionalInput<UserInfo>(createdBy),
      displayName = pulumi.Input.asInput<String>(displayName),
      eventTime = pulumi.Input.asOptionalInput<String>(eventTime),
      incidentInfo = pulumi.Input.asOptionalInput<IncidentInfo>(incidentInfo),
      labels = pulumi.Input.asOptionalInput<List<String>>(labels),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      query = pulumi.Input.asInput<String>(query),
      queryEndTime = pulumi.Input.asOptionalInput<String>(queryEndTime),
      queryResult = pulumi.Input.asOptionalInput<String>(queryResult),
      queryStartTime = pulumi.Input.asOptionalInput<String>(queryStartTime),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      updated = pulumi.Input.asOptionalInput<String>(updated),
      updatedBy = pulumi.Input.asOptionalInput<UserInfo>(updatedBy),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      bookmarkId: map['bookmarkId'] == null ? null : pulumi.Output.create<String>(map['bookmarkId'] as String),
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<UserInfo>(UserInfo.fromMap((map['createdBy'] as Map).cast<String, dynamic>())),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      eventTime: map['eventTime'] == null ? null : pulumi.Output.create<String>(map['eventTime'] as String),
      incidentInfo: map['incidentInfo'] == null ? null : pulumi.Output.create<IncidentInfo>(IncidentInfo.fromMap((map['incidentInfo'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<String>>((map['labels'] as List).cast<String>()),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      query: pulumi.Output.create<String>(map['query'] as String),
      queryEndTime: map['queryEndTime'] == null ? null : pulumi.Output.create<String>(map['queryEndTime'] as String),
      queryResult: map['queryResult'] == null ? null : pulumi.Output.create<String>(map['queryResult'] as String),
      queryStartTime: map['queryStartTime'] == null ? null : pulumi.Output.create<String>(map['queryStartTime'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
      updatedBy: map['updatedBy'] == null ? null : pulumi.Output.create<UserInfo>(UserInfo.fromMap((map['updatedBy'] as Map).cast<String, dynamic>())),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

