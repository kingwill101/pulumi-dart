// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CollectorPolicyIpfxIngestion {
  /// A list of ingestion source resource IDs. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<List<String>> sourceResourceIds;

  /// Creates a new [CollectorPolicyIpfxIngestion].
  /// [sourceResourceIds] A list of ingestion source resource IDs. Changing this forces a new Network Function Collector Policy to be created.
  CollectorPolicyIpfxIngestion({
    required this.sourceResourceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceResourceIds': sourceResourceIds,
    };
  }

  factory CollectorPolicyIpfxIngestion.fromMap(Map<String, dynamic> map) {
    return CollectorPolicyIpfxIngestion(
      sourceResourceIds: ((map['sourceResourceIds'] as List).cast<String>()).input(),
    );
  }
}

