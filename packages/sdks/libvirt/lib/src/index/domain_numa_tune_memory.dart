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
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeset: (() { final guardedValue = map['nodeset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

