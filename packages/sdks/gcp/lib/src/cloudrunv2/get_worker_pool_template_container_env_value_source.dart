// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_template_container_env_value_source_secret_key_ref.dart';

class GetWorkerPoolTemplateContainerEnvValueSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  final pulumi.Input<List<GetWorkerPoolTemplateContainerEnvValueSourceSecretKeyRef>> secretKeyReves;

  /// Creates a new [GetWorkerPoolTemplateContainerEnvValueSource].
  /// [secretKeyReves] Selects a secret and a specific version from Cloud Secret Manager.
  const GetWorkerPoolTemplateContainerEnvValueSource({
    required this.secretKeyReves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyReves': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateContainerEnvValueSourceSecretKeyRef>, List<Map<String, dynamic>>>(secretKeyReves, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateContainerEnvValueSourceSecretKeyRef, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkerPoolTemplateContainerEnvValueSource.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerEnvValueSource(
      secretKeyReves: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateContainerEnvValueSourceSecretKeyRef>(map['secretKeyReves']!, (value) => GetWorkerPoolTemplateContainerEnvValueSourceSecretKeyRef.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
