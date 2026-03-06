// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_properties_patch.dart';

class InstanceGroupManagerAllInstancesConfig {
  /// Properties to set on all instances in the group. You can add or modify properties using the instanceGroupManagers.patch or regionInstanceGroupManagers.patch. After setting allInstancesConfig on the group, you must update the group's instances to apply the configuration. To apply the configuration, set the group's updatePolicy.type field to use proactive updates or use the applyUpdatesToInstances method.
  final pulumi.Input<InstancePropertiesPatch>? properties;

  /// Creates a new [InstanceGroupManagerAllInstancesConfig].
  /// [properties] Properties to set on all instances in the group. You can add or modify properties using the instanceGroupManagers.patch or regionInstanceGroupManagers.patch. After setting allInstancesConfig on the group, you must update the group's instances to apply the configuration. To apply the configuration, set the group's updatePolicy.type field to use proactive updates or use the applyUpdatesToInstances method.
  const InstanceGroupManagerAllInstancesConfig({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<InstancePropertiesPatch, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerAllInstancesConfig.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerAllInstancesConfig(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePropertiesPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

