// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_instance_named_port.dart';

class GetRegionInstanceGroupInstance {
  /// URL to the instance.
  final pulumi.Input<String> instance;
  /// List of named ports in the group, as a list of resources, each containing:
  final pulumi.Input<List<GetRegionInstanceGroupInstanceNamedPort>> namedPorts;
  /// String description of current state of the instance.
  final pulumi.Input<String> status;

  /// Creates a new [GetRegionInstanceGroupInstance].
  /// [instance] URL to the instance.
  /// [namedPorts] List of named ports in the group, as a list of resources, each containing:
  /// [status] String description of current state of the instance.
  GetRegionInstanceGroupInstance({
    required this.instance,
    required this.namedPorts,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'namedPorts': pulumi.Input.mapInputValue<List<GetRegionInstanceGroupInstanceNamedPort>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<GetRegionInstanceGroupInstanceNamedPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
    };
  }

  factory GetRegionInstanceGroupInstance.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupInstance(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      namedPorts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionInstanceGroupInstanceNamedPort>(map['namedPorts']!, (value) => GetRegionInstanceGroupInstanceNamedPort.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

