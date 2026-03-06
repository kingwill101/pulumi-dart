// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_instance_patch.dart';

/// NamedResourcesResources is used in ResourceModel.
class NamedResourcesResourcesPatch {
  /// The list of all individual resources instances currently available.
  final pulumi.Input<List<NamedResourcesInstancePatch>>? instances;

  /// Creates a new [NamedResourcesResourcesPatch].
  /// [instances] The list of all individual resources instances currently available.
  const NamedResourcesResourcesPatch({
    this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': ?pulumi.Input.mapOptionalInputValue<List<NamedResourcesInstancePatch>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<NamedResourcesInstancePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NamedResourcesResourcesPatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesResourcesPatch(
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamedResourcesInstancePatch>(guardedValue, (value) => NamedResourcesInstancePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

