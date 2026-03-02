// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_template_container_env_value_source_secret_key_ref.dart';

class WorkerPoolTemplateContainerEnvValueSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateContainerEnvValueSourceSecretKeyRef>? secretKeyRef;

  /// Creates a new [WorkerPoolTemplateContainerEnvValueSource].
  /// [secretKeyRef] Selects a secret and a specific version from Cloud Secret Manager.
  WorkerPoolTemplateContainerEnvValueSource({
    this.secretKeyRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyRef': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateContainerEnvValueSourceSecretKeyRef, Map<String, dynamic>>(secretKeyRef, (value) => value.toMap()),
    };
  }

  factory WorkerPoolTemplateContainerEnvValueSource.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerEnvValueSource(
      secretKeyRef: map['secretKeyRef'] == null ? null : (WorkerPoolTemplateContainerEnvValueSourceSecretKeyRef.fromMap((map['secretKeyRef'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

