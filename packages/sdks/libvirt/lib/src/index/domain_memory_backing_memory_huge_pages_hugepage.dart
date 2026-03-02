// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainMemoryBackingMemoryHugePagesHugepage {
  /// Specifies the NUMA nodeset where huge pages can be allocated, controlling memory locality.
  final pulumi.Input<String>? nodeset;
  /// Sets the size of each huge page, which impacts memory management and performance.
  final pulumi.Input<double> size;
  /// Indicates the unit for the huge page size, specifying the measurement of the size configuration.
  final pulumi.Input<String>? unit;

  /// Creates a new [DomainMemoryBackingMemoryHugePagesHugepage].
  /// [nodeset] Specifies the NUMA nodeset where huge pages can be allocated, controlling memory locality.
  /// [size] Sets the size of each huge page, which impacts memory management and performance.
  /// [unit] Indicates the unit for the huge page size, specifying the measurement of the size configuration.
  DomainMemoryBackingMemoryHugePagesHugepage({
    this.nodeset,
    required this.size,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeset': ?nodeset,
      'size': size,
      'unit': ?unit,
    };
  }

  factory DomainMemoryBackingMemoryHugePagesHugepage.fromMap(Map<String, dynamic> map) {
    return DomainMemoryBackingMemoryHugePagesHugepage(
      nodeset: map['nodeset'] == null ? null : (map['nodeset']! as String).input(),
      size: (map['size'] as double).input(),
      unit: map['unit'] == null ? null : (map['unit']! as String).input(),
    );
  }
}

