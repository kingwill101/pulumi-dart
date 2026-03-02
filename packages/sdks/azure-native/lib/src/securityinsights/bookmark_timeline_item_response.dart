// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_info_response.dart';

/// Represents bookmark timeline item.
class BookmarkTimelineItemResponse {
  /// The bookmark azure resource id.
  final pulumi.Input<String> azureResourceId;
  /// Describes a user that created the bookmark
  final pulumi.Input<UserInfoResponse>? createdBy;
  /// The bookmark display name.
  final pulumi.Input<String>? displayName;
  /// The bookmark end time.
  final pulumi.Input<String>? endTimeUtc;
  /// The bookmark event time.
  final pulumi.Input<String>? eventTime;
  /// The entity query kind
  /// Expected value is 'Bookmark'.
  final pulumi.Input<String> kind;
  /// List of labels relevant to this bookmark
  final pulumi.Input<List<String>>? labels;
  /// The notes of the bookmark
  final pulumi.Input<String>? notes;
  /// The bookmark start time.
  final pulumi.Input<String>? startTimeUtc;

  /// Creates a new [BookmarkTimelineItemResponse].
  /// [azureResourceId] The bookmark azure resource id.
  /// [createdBy] Describes a user that created the bookmark
  /// [displayName] The bookmark display name.
  /// [endTimeUtc] The bookmark end time.
  /// [eventTime] The bookmark event time.
  /// [kind] The entity query kind
  /// [labels] List of labels relevant to this bookmark
  /// [notes] The notes of the bookmark
  /// [startTimeUtc] The bookmark start time.
  BookmarkTimelineItemResponse({
    required this.azureResourceId,
    this.createdBy,
    this.displayName,
    this.endTimeUtc,
    this.eventTime,
    required this.kind,
    this.labels,
    this.notes,
    this.startTimeUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceId': azureResourceId,
      'createdBy': ?pulumi.Input.mapOptionalInputValue<UserInfoResponse, Map<String, dynamic>>(createdBy, (value) => value.toMap()),
      'displayName': ?displayName,
      'endTimeUtc': ?endTimeUtc,
      'eventTime': ?eventTime,
      'kind': kind,
      'labels': ?labels,
      'notes': ?notes,
      'startTimeUtc': ?startTimeUtc,
    };
  }

  factory BookmarkTimelineItemResponse.fromMap(Map<String, dynamic> map) {
    return BookmarkTimelineItemResponse(
      azureResourceId: (map['azureResourceId'] as String).input(),
      createdBy: map['createdBy'] == null ? null : (UserInfoResponse.fromMap((map['createdBy'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      endTimeUtc: map['endTimeUtc'] == null ? null : (map['endTimeUtc'] as String).input(),
      eventTime: map['eventTime'] == null ? null : (map['eventTime'] as String).input(),
      kind: (map['kind'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as List).cast<String>()).input(),
      notes: map['notes'] == null ? null : (map['notes'] as String).input(),
      startTimeUtc: map['startTimeUtc'] == null ? null : (map['startTimeUtc'] as String).input(),
    );
  }
}

