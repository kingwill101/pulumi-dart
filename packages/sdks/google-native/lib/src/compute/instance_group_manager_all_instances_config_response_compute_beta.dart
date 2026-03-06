// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_properties_patch_response_compute_beta.dart';

class InstanceGroupManagerAllInstancesConfigResponseComputeBeta {
  /// Properties to set on all instances in the group. You can add or modify properties using the instanceGroupManagers.patch or regionInstanceGroupManagers.patch. After setting allInstancesConfig on the group, you must update the group's instances to apply the configuration. To apply the configuration, set the group's updatePolicy.type field to use proactive updates or use the applyUpdatesToInstances method.
  final pulumi.Input<InstancePropertiesPatchResponseComputeBeta> properties;

  /// Creates a new [InstanceGroupManagerAllInstancesConfigResponseComputeBeta].
  /// [properties] Properties to set on all instances in the group. You can add or modify properties using the instanceGroupManagers.patch or regionInstanceGroupManagers.patch. After setting allInstancesConfig on the group, you must update the group's instances to apply the configuration. To apply the configuration, set the group's updatePolicy.type field to use proactive updates or use the applyUpdatesToInstances method.
  const InstanceGroupManagerAllInstancesConfigResponseComputeBeta({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<InstancePropertiesPatchResponseComputeBeta, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerAllInstancesConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerAllInstancesConfigResponseComputeBeta(
      properties: pulumi.Input.fromValue(InstancePropertiesPatchResponseComputeBeta.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

