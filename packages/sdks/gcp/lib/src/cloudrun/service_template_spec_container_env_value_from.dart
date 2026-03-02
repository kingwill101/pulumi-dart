// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container_env_value_from_secret_key_ref.dart';

class ServiceTemplateSpecContainerEnvValueFrom {
  /// Selects a key (version) of a secret in Secret Manager.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerEnvValueFromSecretKeyRef> secretKeyRef;

  /// Creates a new [ServiceTemplateSpecContainerEnvValueFrom].
  /// [secretKeyRef] Selects a key (version) of a secret in Secret Manager.
  ServiceTemplateSpecContainerEnvValueFrom({
    required this.secretKeyRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyRef': pulumi.Input.mapInputValue<ServiceTemplateSpecContainerEnvValueFromSecretKeyRef, Map<String, dynamic>>(secretKeyRef, (value) => value.toMap()),
    };
  }

  factory ServiceTemplateSpecContainerEnvValueFrom.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvValueFrom(
      secretKeyRef: (ServiceTemplateSpecContainerEnvValueFromSecretKeyRef.fromMap((map['secretKeyRef'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

