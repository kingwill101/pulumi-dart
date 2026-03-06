// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_env_value_from_secret_key_ref.dart';

class GetServiceTemplateSpecContainerEnvValueFrom {
  /// Selects a key (version) of a secret in Secret Manager.
  final pulumi.Input<List<GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef>> secretKeyReves;

  /// Creates a new [GetServiceTemplateSpecContainerEnvValueFrom].
  /// [secretKeyReves] Selects a key (version) of a secret in Secret Manager.
  const GetServiceTemplateSpecContainerEnvValueFrom({
    required this.secretKeyReves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyReves': pulumi.Input.mapInputValue<List<GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef>, List<Map<String, dynamic>>>(secretKeyReves, (value) => pulumi.Input.encodeList<GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServiceTemplateSpecContainerEnvValueFrom.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvValueFrom(
      secretKeyReves: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef>(map['secretKeyReves']!, (value) => GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

