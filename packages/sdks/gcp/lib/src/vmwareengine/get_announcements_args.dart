// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_announcements_get_announcements_args_doc}
/// Arguments for getAnnouncements.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_announcements_get_announcements_args_doc}
class GetAnnouncementsArgs {
  /// The resource name of the specific Announcement to retrieve. If provided, the `announcements` list will contain only this announcement.
  final pulumi.Input<String>? name;
  /// The resource name of the region for which announcements will be listed. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: projects/my-project/locations/us-west1-a
  final pulumi.Input<String> parent;

  /// Creates a new [GetAnnouncementsArgs].
  /// [name] The resource name of the specific Announcement to retrieve. If provided, the `announcements` list will contain only this announcement.
  /// [parent] The resource name of the region for which announcements will be listed. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: projects/my-project/locations/us-west1-a
  const GetAnnouncementsArgs({
    this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parent': parent,
    };
  }

  factory GetAnnouncementsArgs.fromMap(Map<String, dynamic> map) {
    return GetAnnouncementsArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
