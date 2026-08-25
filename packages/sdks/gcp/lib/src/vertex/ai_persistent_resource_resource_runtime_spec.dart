// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_persistent_resource_resource_runtime_spec_service_account_spec.dart';

class AiPersistentResourceResourceRuntimeSpec {
  /// Configuration for the use of custom service account to run the workloads.
  /// Structure is documented below.
  final pulumi.Input<AiPersistentResourceResourceRuntimeSpecServiceAccountSpec?>? serviceAccountSpec;

  /// Creates a new [AiPersistentResourceResourceRuntimeSpec].
  /// [serviceAccountSpec] Configuration for the use of custom service account to run the workloads.
  const AiPersistentResourceResourceRuntimeSpec({
    this.serviceAccountSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountSpec': ?pulumi.Input.mapOptionalInputValue<AiPersistentResourceResourceRuntimeSpecServiceAccountSpec, Map<String, dynamic>>(serviceAccountSpec, (value) => value.toMap()),
    };
  }

  factory AiPersistentResourceResourceRuntimeSpec.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourceResourceRuntimeSpec(
      serviceAccountSpec: (() { final guardedValue = map['serviceAccountSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPersistentResourceResourceRuntimeSpecServiceAccountSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
