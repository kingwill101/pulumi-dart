// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_env_from_secret_ref_local_object_reference.dart';

class GetServiceTemplateSpecContainerEnvFromSecretRef {
  /// The Secret to select from.
  final pulumi.Input<List<GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference>> localObjectReferences;
  /// Specify whether the Secret must be defined
  final pulumi.Input<bool> optional;

  /// Creates a new [GetServiceTemplateSpecContainerEnvFromSecretRef].
  /// [localObjectReferences] The Secret to select from.
  /// [optional] Specify whether the Secret must be defined
  const GetServiceTemplateSpecContainerEnvFromSecretRef({
    required this.localObjectReferences,
    required this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localObjectReferences': pulumi.Input.mapInputValue<List<GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference>, List<Map<String, dynamic>>>(localObjectReferences, (value) => pulumi.Input.encodeList<GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'optional': optional,
    };
  }

  factory GetServiceTemplateSpecContainerEnvFromSecretRef.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvFromSecretRef(
      localObjectReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference>(map['localObjectReferences']!, (value) => GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference.fromMap((value as Map).cast<String, dynamic>()))),
      optional: pulumi.Input.fromValue(map['optional'] as bool),
    );
  }
}

