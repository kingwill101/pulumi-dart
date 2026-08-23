// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTuneMemoryTuneNode {
  /// Sets the bandwidth limit for a specific memory tuning node, affecting memory access speed and performance.
  final pulumi.Input<double> bandwidth;
  /// Identifies the specific tuning node for memory adjustments, linking it to allocated memory resources.
  final pulumi.Input<double> id;

  /// Creates a new [DomainCpuTuneMemoryTuneNode].
  /// [bandwidth] Sets the bandwidth limit for a specific memory tuning node, affecting memory access speed and performance.
  /// [id] Identifies the specific tuning node for memory adjustments, linking it to allocated memory resources.
  const DomainCpuTuneMemoryTuneNode({
    required this.bandwidth,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'id': id,
    };
  }

  factory DomainCpuTuneMemoryTuneNode.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneMemoryTuneNode(
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as double),
      id: pulumi.Input.fromValue(map['id'] as double),
    );
  }
}
