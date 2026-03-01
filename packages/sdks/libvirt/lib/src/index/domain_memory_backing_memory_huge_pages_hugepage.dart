// ignore_for_file: unused_element, unnecessary_cast


class DomainMemoryBackingMemoryHugePagesHugepage {
  /// Specifies the NUMA nodeset where huge pages can be allocated, controlling memory locality.
  final String? nodeset;
  /// Sets the size of each huge page, which impacts memory management and performance.
  final double size;
  /// Indicates the unit for the huge page size, specifying the measurement of the size configuration.
  final String? unit;

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
      nodeset: map['nodeset'] == null ? null : map['nodeset'] as String,
      size: map['size'] as double,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}

