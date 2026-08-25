// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_version_target_size.dart';

class InstanceGroupManagerVersion {
  /// The full URL to an instance template from which all new instances of this version will be created. It is recommended to reference instance templates through their unique id (`selfLinkUnique` attribute).
  final pulumi.Input<String> instanceTemplate;
  /// Version name.
  final pulumi.Input<String?>? name;
  /// The number of instances calculated as a fixed number or a percentage depending on the settings. Structure is documented below.
  ///
  /// &gt; Exactly one `version` you specify must not have a `targetSize` specified. During a rolling update, the instance group manager will fulfill the `targetSize`
  /// constraints of every other `version`, and any remaining instances will be provisioned with the version where `targetSize` is unset.
  final pulumi.Input<InstanceGroupManagerVersionTargetSize?>? targetSize;

  /// Creates a new [InstanceGroupManagerVersion].
  /// [instanceTemplate] The full URL to an instance template from which all new instances of this version will be created. It is recommended to reference instance templates through their unique id (`selfLinkUnique` attribute).
  /// [name] Version name.
  /// [targetSize] The number of instances calculated as a fixed number or a percentage depending on the settings. Structure is documented below.
  const InstanceGroupManagerVersion({
    required this.instanceTemplate,
    this.name,
    this.targetSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': instanceTemplate,
      'name': ?name,
      'targetSize': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerVersionTargetSize, Map<String, dynamic>>(targetSize, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerVersion.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerVersion(
      instanceTemplate: pulumi.Input.fromValue(map['instanceTemplate'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSize: (() { final guardedValue = map['targetSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerVersionTargetSize.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
