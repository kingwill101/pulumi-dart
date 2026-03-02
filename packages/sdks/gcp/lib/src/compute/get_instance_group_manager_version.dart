// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_manager_version_target_size.dart';

class GetInstanceGroupManagerVersion {
  /// The full URL to an instance template from which all new instances of this version will be created.
  final pulumi.Input<String> instanceTemplate;
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String> name;
  /// The number of instances calculated as a fixed number or a percentage depending on the settings.
  final pulumi.Input<List<GetInstanceGroupManagerVersionTargetSize>> targetSizes;

  /// Creates a new [GetInstanceGroupManagerVersion].
  /// [instanceTemplate] The full URL to an instance template from which all new instances of this version will be created.
  /// [name] The name of the instance group. Either `name` or `self_link` must be provided.
  /// [targetSizes] The number of instances calculated as a fixed number or a percentage depending on the settings.
  GetInstanceGroupManagerVersion({
    required this.instanceTemplate,
    required this.name,
    required this.targetSizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': instanceTemplate,
      'name': name,
      'targetSizes': pulumi.Input.mapInputValue<List<GetInstanceGroupManagerVersionTargetSize>, List<Map<String, dynamic>>>(targetSizes, (value) => pulumi.Input.encodeList<GetInstanceGroupManagerVersionTargetSize, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceGroupManagerVersion.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerVersion(
      instanceTemplate: (map['instanceTemplate'] as String).input(),
      name: (map['name'] as String).input(),
      targetSizes: (pulumi.Input.decodeList<GetInstanceGroupManagerVersionTargetSize>(map['targetSizes'], (value) => GetInstanceGroupManagerVersionTargetSize.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

