// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_manager_version_target_size.dart';

class GetRegionInstanceGroupManagerVersion {
  /// The full URL to an instance template from which all new instances of this version will be created.
  final pulumi.Input<String> instanceTemplate;
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String> name;
  /// The number of instances calculated as a fixed number or a percentage depending on the settings.
  final pulumi.Input<List<GetRegionInstanceGroupManagerVersionTargetSize>> targetSizes;

  /// Creates a new [GetRegionInstanceGroupManagerVersion].
  /// [instanceTemplate] The full URL to an instance template from which all new instances of this version will be created.
  /// [name] The name of the instance group. Either `name` or `self_link` must be provided.
  /// [targetSizes] The number of instances calculated as a fixed number or a percentage depending on the settings.
  GetRegionInstanceGroupManagerVersion({
    required this.instanceTemplate,
    required this.name,
    required this.targetSizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': instanceTemplate,
      'name': name,
      'targetSizes': pulumi.Input.mapInputValue<List<GetRegionInstanceGroupManagerVersionTargetSize>, List<Map<String, dynamic>>>(targetSizes, (value) => pulumi.Input.encodeList<GetRegionInstanceGroupManagerVersionTargetSize, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionInstanceGroupManagerVersion.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerVersion(
      instanceTemplate: (map['instanceTemplate'] as String).input(),
      name: (map['name'] as String).input(),
      targetSizes: (pulumi.Input.decodeList<GetRegionInstanceGroupManagerVersionTargetSize>(map['targetSizes'], (value) => GetRegionInstanceGroupManagerVersionTargetSize.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

