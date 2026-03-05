// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_template_template_container_env_value_source_secret_key_ref.dart';

class GetJobTemplateTemplateContainerEnvValueSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  final pulumi.Input<List<GetJobTemplateTemplateContainerEnvValueSourceSecretKeyRef>> secretKeyReves;

  /// Creates a new [GetJobTemplateTemplateContainerEnvValueSource].
  /// [secretKeyReves] Selects a secret and a specific version from Cloud Secret Manager.
  GetJobTemplateTemplateContainerEnvValueSource({
    required this.secretKeyReves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyReves': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateContainerEnvValueSourceSecretKeyRef>, List<Map<String, dynamic>>>(secretKeyReves, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateContainerEnvValueSourceSecretKeyRef, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetJobTemplateTemplateContainerEnvValueSource.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainerEnvValueSource(
      secretKeyReves: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobTemplateTemplateContainerEnvValueSourceSecretKeyRef>(map['secretKeyReves']!, (value) => GetJobTemplateTemplateContainerEnvValueSourceSecretKeyRef.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

