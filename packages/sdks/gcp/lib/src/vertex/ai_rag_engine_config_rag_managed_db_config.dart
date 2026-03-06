// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagEngineConfigRagManagedDbConfig {
  /// Basic tier is a cost-effective and low compute tier suitable for the following cases: Experimenting with RagManagedDb, Small data size, Latency insensitive workload, Only using RAG Engine with external vector DBs.
  /// NOTE: This is the default tier if not explicitly chosen.
  final pulumi.Input<Map<String, dynamic>>? basic;
  /// Scaled tier offers production grade performance along with autoscaling functionality. It is suitable for customers with large amounts of data or performance sensitive workloads.
  final pulumi.Input<Map<String, dynamic>>? scaled;
  /// Disables the RAG Engine service and deletes all your data held within this service. This will halt the billing of the service.
  /// NOTE: Once deleted the data cannot be recovered. To start using RAG Engine again, you will need to update the tier by calling the UpdateRagEngineConfig API.
  final pulumi.Input<Map<String, dynamic>>? unprovisioned;

  /// Creates a new [AiRagEngineConfigRagManagedDbConfig].
  /// [basic] Basic tier is a cost-effective and low compute tier suitable for the following cases: Experimenting with RagManagedDb, Small data size, Latency insensitive workload, Only using RAG Engine with external vector DBs.
  /// [scaled] Scaled tier offers production grade performance along with autoscaling functionality. It is suitable for customers with large amounts of data or performance sensitive workloads.
  /// [unprovisioned] Disables the RAG Engine service and deletes all your data held within this service. This will halt the billing of the service.
  const AiRagEngineConfigRagManagedDbConfig({
    this.basic,
    this.scaled,
    this.unprovisioned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?basic,
      'scaled': ?scaled,
      'unprovisioned': ?unprovisioned,
    };
  }

  factory AiRagEngineConfigRagManagedDbConfig.fromMap(Map<String, dynamic> map) {
    return AiRagEngineConfigRagManagedDbConfig(
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      scaled: (() { final guardedValue = map['scaled']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      unprovisioned: (() { final guardedValue = map['unprovisioned']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

