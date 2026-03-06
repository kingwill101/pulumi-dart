// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template_container_env_value_source_secret_key_ref.dart';

class JobTemplateTemplateContainerEnvValueSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateContainerEnvValueSourceSecretKeyRef>? secretKeyRef;

  /// Creates a new [JobTemplateTemplateContainerEnvValueSource].
  /// [secretKeyRef] Selects a secret and a specific version from Cloud Secret Manager.
  const JobTemplateTemplateContainerEnvValueSource({
    this.secretKeyRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyRef': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateContainerEnvValueSourceSecretKeyRef, Map<String, dynamic>>(secretKeyRef, (value) => value.toMap()),
    };
  }

  factory JobTemplateTemplateContainerEnvValueSource.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateContainerEnvValueSource(
      secretKeyRef: (() { final guardedValue = map['secretKeyRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateTemplateContainerEnvValueSourceSecretKeyRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

