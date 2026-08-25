// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_announcements_announcement.dart';

/// Result data returned by getAnnouncements.
class GetAnnouncementsResult {
  /// A list of VMware Engine announcements. Contains one element if `name` is specified in the arguments, otherwise all announcements for the region.
  final List<GetAnnouncementsAnnouncement>? announcements;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The resource name of the announcement.
  final String? name;
  final String? parent;

  /// Creates a new [GetAnnouncementsResult].
  /// [announcements] A list of VMware Engine announcements. Contains one element if `name` is specified in the arguments, otherwise all announcements for the region.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The resource name of the announcement.
  /// [parent] Optional.
  const GetAnnouncementsResult({
    this.announcements,
    this.id,
    this.name,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'announcements': ?(() { final guardedValue = announcements; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAnnouncementsAnnouncement, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'parent': ?parent,
    };
  }

  factory GetAnnouncementsResult.fromMap(Map<String, dynamic> map) {
    return GetAnnouncementsResult(
      announcements: (() { final guardedValue = map['announcements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAnnouncementsAnnouncement>(guardedValue, (value) => GetAnnouncementsAnnouncement.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
