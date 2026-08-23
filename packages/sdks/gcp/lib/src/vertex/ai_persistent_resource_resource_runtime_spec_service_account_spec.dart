// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPersistentResourceResourceRuntimeSpecServiceAccountSpec {
  /// If true, custom user-managed service account is enforced to run any
  /// workloads (for example, Vertex Jobs) on the resource.
  /// Otherwise, uses the [Vertex AI Custom Code Service
  /// Agent](https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents).
  final pulumi.Input<bool> enableCustomServiceAccount;

  /// Creates a new [AiPersistentResourceResourceRuntimeSpecServiceAccountSpec].
  /// [enableCustomServiceAccount] If true, custom user-managed service account is enforced to run any
  const AiPersistentResourceResourceRuntimeSpecServiceAccountSpec({
    required this.enableCustomServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCustomServiceAccount': enableCustomServiceAccount,
    };
  }

  factory AiPersistentResourceResourceRuntimeSpecServiceAccountSpec.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourceResourceRuntimeSpecServiceAccountSpec(
      enableCustomServiceAccount: pulumi.Input.fromValue(map['enableCustomServiceAccount'] as bool),
    );
  }
}
