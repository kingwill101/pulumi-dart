// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAnnouncementsAnnouncement {
  /// Code of the announcement. Possible values include: `MAINTENANCE_SCHEDULE_NOT_AVAILABLE`, `MAINTENANCE_SCHEDULE_READY`, `MAINTENANCE_SCHEDULE_LOCKED`, `MAINTENANCE_SCHEDULE_CANCELED`, `MAINTENANCE_INPROGRESS`, `MAINTENANCE_SUCCESSFUL`, `MAINTENANCE_CANCELED`, `MAINTENANCE_PAUSED`, `MAINTENANCE_FAILED`, `IMMUTABLE_MAINTENANCE_SCHEDULE_READY`, `MAINTENANCE_STARTING_SOON`.
  final pulumi.Input<String> code;
  /// `Additional structured details about this announcement`
  final pulumi.Input<Map<String, String>> metadata;
  /// The resource name of the specific Announcement to retrieve. If provided, the `announcements` list will contain only this announcement.
  final pulumi.Input<String> name;
  /// Target Resource Type defines the type of the target for the announcement.
  final pulumi.Input<String> targetResourceType;

  /// Creates a new [GetAnnouncementsAnnouncement].
  /// [code] Code of the announcement. Possible values include: `MAINTENANCE_SCHEDULE_NOT_AVAILABLE`, `MAINTENANCE_SCHEDULE_READY`, `MAINTENANCE_SCHEDULE_LOCKED`, `MAINTENANCE_SCHEDULE_CANCELED`, `MAINTENANCE_INPROGRESS`, `MAINTENANCE_SUCCESSFUL`, `MAINTENANCE_CANCELED`, `MAINTENANCE_PAUSED`, `MAINTENANCE_FAILED`, `IMMUTABLE_MAINTENANCE_SCHEDULE_READY`, `MAINTENANCE_STARTING_SOON`.
  /// [metadata] `Additional structured details about this announcement`
  /// [name] The resource name of the specific Announcement to retrieve. If provided, the `announcements` list will contain only this announcement.
  /// [targetResourceType] Target Resource Type defines the type of the target for the announcement.
  const GetAnnouncementsAnnouncement({
    required this.code,
    required this.metadata,
    required this.name,
    required this.targetResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'metadata': metadata,
      'name': name,
      'targetResourceType': targetResourceType,
    };
  }

  factory GetAnnouncementsAnnouncement.fromMap(Map<String, dynamic> map) {
    return GetAnnouncementsAnnouncement(
      code: pulumi.Input.fromValue(map['code'] as String),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      targetResourceType: pulumi.Input.fromValue(map['targetResourceType'] as String),
    );
  }
}
