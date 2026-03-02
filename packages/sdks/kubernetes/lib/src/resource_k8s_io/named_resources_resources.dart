// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_instance.dart';

/// NamedResourcesResources is used in ResourceModel.
class NamedResourcesResources {
  /// The list of all individual resources instances currently available.
  final pulumi.Input<List<NamedResourcesInstance>> instances;

  /// Creates a new [NamedResourcesResources].
  /// [instances] The list of all individual resources instances currently available.
  NamedResourcesResources({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': pulumi.Input.mapInputValue<List<NamedResourcesInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<NamedResourcesInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NamedResourcesResources.fromMap(Map<String, dynamic> map) {
    return NamedResourcesResources(
      instances: (pulumi.Input.decodeList<NamedResourcesInstance>(map['instances'], (value) => NamedResourcesInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

