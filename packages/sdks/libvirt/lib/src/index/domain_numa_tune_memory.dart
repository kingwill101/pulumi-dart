// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainNumaTuneMemory {
  /// Sets the allocation mode for NUMA memory, influencing how memory is distributed across nodes.
  final pulumi.Input<String>? mode;
  /// Specifies the nodeset for memory allocation for the NUMA settings, allowing for tailored memory configurations.
  final pulumi.Input<String>? nodeset;
  /// Defines the placement strategy for NUMA memory, orienting memory allocation toward specific nodes.
  final pulumi.Input<String>? placement;

  /// Creates a new [DomainNumaTuneMemory].
  /// [mode] Sets the allocation mode for NUMA memory, influencing how memory is distributed across nodes.
  /// [nodeset] Specifies the nodeset for memory allocation for the NUMA settings, allowing for tailored memory configurations.
  /// [placement] Defines the placement strategy for NUMA memory, orienting memory allocation toward specific nodes.
  DomainNumaTuneMemory({
    this.mode,
    this.nodeset,
    this.placement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'nodeset': ?nodeset,
      'placement': ?placement,
    };
  }

  factory DomainNumaTuneMemory.fromMap(Map<String, dynamic> map) {
    return DomainNumaTuneMemory(
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      nodeset: map['nodeset'] == null ? null : (map['nodeset'] as String).input(),
      placement: map['placement'] == null ? null : (map['placement'] as String).input(),
    );
  }
}

