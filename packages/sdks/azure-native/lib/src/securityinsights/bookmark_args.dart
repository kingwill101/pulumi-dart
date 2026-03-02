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
      bookmarkId: map['bookmarkId'] == null ? null : (map['bookmarkId']! as String).input(),
      created: map['created'] == null ? null : (map['created']! as String).input(),
      createdBy: map['createdBy'] == null ? null : (UserInfo.fromMap((map['createdBy']! as Map).cast<String, dynamic>())).input(),
      displayName: (map['displayName'] as String).input(),
      eventTime: map['eventTime'] == null ? null : (map['eventTime']! as String).input(),
      incidentInfo: map['incidentInfo'] == null ? null : (IncidentInfo.fromMap((map['incidentInfo']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as List).cast<String>()).input(),
      notes: map['notes'] == null ? null : (map['notes']! as String).input(),
      query: (map['query'] as String).input(),
      queryEndTime: map['queryEndTime'] == null ? null : (map['queryEndTime']! as String).input(),
      queryResult: map['queryResult'] == null ? null : (map['queryResult']! as String).input(),
      queryStartTime: map['queryStartTime'] == null ? null : (map['queryStartTime']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      updated: map['updated'] == null ? null : (map['updated']! as String).input(),
      updatedBy: map['updatedBy'] == null ? null : (UserInfo.fromMap((map['updatedBy']! as Map).cast<String, dynamic>())).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

