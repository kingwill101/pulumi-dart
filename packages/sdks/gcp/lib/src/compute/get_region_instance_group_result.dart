// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_instance.dart';

/// Result data returned by getRegionInstanceGroup.
class GetRegionInstanceGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of instances in the group, as a list of resources, each containing:
  final List<GetRegionInstanceGroupInstance>? instances;
  /// String port name
  final String? name;
  final String? project;
  final String? region;
  final String? selfLink;
  /// The number of instances in the group.
  final int? size;

  /// Creates a new [GetRegionInstanceGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instances] List of instances in the group, as a list of resources, each containing:
  /// [name] String port name
  /// [project] Optional.
  /// [region] Optional.
  /// [selfLink] Optional.
  /// [size] The number of instances in the group.
  const GetRegionInstanceGroupResult({
    this.id,
    this.instances,
    this.name,
    this.project,
    this.region,
    this.selfLink,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'instances': ?(() { final guardedValue = instances; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupInstance, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
      'size': ?size,
    };
  }

  factory GetRegionInstanceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupInstance>(guardedValue, (value) => GetRegionInstanceGroupInstance.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
