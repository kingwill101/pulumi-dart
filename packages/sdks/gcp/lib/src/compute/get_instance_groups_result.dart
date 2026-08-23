// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_groups_instance_group.dart';

/// Result data returned by getInstanceGroups.
class GetInstanceGroupsResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of all retrieved GCE instance groups. Structure is defined below.
  final List<GetInstanceGroupsInstanceGroup> instanceGroups;
  /// The ID of the project in which the resource belongs.
  final String? project;
  /// The zone of the instance group.
  final String? zone;

  /// Creates a new [GetInstanceGroupsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceGroups] A list of all retrieved GCE instance groups. Structure is defined below.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] The zone of the instance group.
  const GetInstanceGroupsResult({
    this.filter,
    required this.id,
    required this.instanceGroups,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': id,
      'instanceGroups': pulumi.Input.encodeList<GetInstanceGroupsInstanceGroup, Map<String, dynamic>>(instanceGroups, (value) => value.toMap()),
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetInstanceGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      instanceGroups: pulumi.Input.decodeList<GetInstanceGroupsInstanceGroup>(map['instanceGroups']!, (value) => GetInstanceGroupsInstanceGroup.fromMap((value as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
