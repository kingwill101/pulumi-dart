// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container_env_from_config_map_ref_local_object_reference.dart';

class ServiceTemplateSpecContainerEnvFromConfigMapRef {
  /// The ConfigMap to select from.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference>? localObjectReference;
  /// Specify whether the ConfigMap must be defined
  final pulumi.Input<bool>? optional;

  /// Creates a new [ServiceTemplateSpecContainerEnvFromConfigMapRef].
  /// [localObjectReference] The ConfigMap to select from.
  /// [optional] Specify whether the ConfigMap must be defined
  const ServiceTemplateSpecContainerEnvFromConfigMapRef({
    this.localObjectReference,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localObjectReference': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference, Map<String, dynamic>>(localObjectReference, (value) => value.toMap()),
      'optional': ?optional,
    };
  }

  factory ServiceTemplateSpecContainerEnvFromConfigMapRef.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvFromConfigMapRef(
      localObjectReference: (() { final guardedValue = map['localObjectReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      optional: (() { final guardedValue = map['optional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
