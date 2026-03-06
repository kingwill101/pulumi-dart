// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_properties_patch_response.dart';

class InstanceGroupManagerAllInstancesConfigResponse {
  /// Properties to set on all instances in the group. You can add or modify properties using the instanceGroupManagers.patch or regionInstanceGroupManagers.patch. After setting allInstancesConfig on the group, you must update the group's instances to apply the configuration. To apply the configuration, set the group's updatePolicy.type field to use proactive updates or use the applyUpdatesToInstances method.
  final pulumi.Input<InstancePropertiesPatchResponse> properties;

  /// Creates a new [InstanceGroupManagerAllInstancesConfigResponse].
  /// [properties] Properties to set on all instances in the group. You can add or modify properties using the instanceGroupManagers.patch or regionInstanceGroupManagers.patch. After setting allInstancesConfig on the group, you must update the group's instances to apply the configuration. To apply the configuration, set the group's updatePolicy.type field to use proactive updates or use the applyUpdatesToInstances method.
  const InstanceGroupManagerAllInstancesConfigResponse({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<InstancePropertiesPatchResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerAllInstancesConfigResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerAllInstancesConfigResponse(
      properties: pulumi.Input.fromValue(InstancePropertiesPatchResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

