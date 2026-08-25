// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container_env_from_secret_ref_local_object_reference.dart';

class ServiceTemplateSpecContainerEnvFromSecretRef {
  /// The Secret to select from.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference?>? localObjectReference;
  /// Specify whether the Secret must be defined
  final pulumi.Input<bool?>? optional;

  /// Creates a new [ServiceTemplateSpecContainerEnvFromSecretRef].
  /// [localObjectReference] The Secret to select from.
  /// [optional] Specify whether the Secret must be defined
  const ServiceTemplateSpecContainerEnvFromSecretRef({
    this.localObjectReference,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localObjectReference': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference, Map<String, dynamic>>(localObjectReference, (value) => value.toMap()),
      'optional': ?optional,
    };
  }

  factory ServiceTemplateSpecContainerEnvFromSecretRef.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvFromSecretRef(
      localObjectReference: (() { final guardedValue = map['localObjectReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      optional: (() { final guardedValue = map['optional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
