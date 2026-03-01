// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuMaxPhysAddr {
  /// Defines the number of bits that represent the maximum physical address.
  final double? bits;
  /// Sets an upper limit on the maximum physical address that can be used by the domain.
  final double? limit;
  /// Specifies the addressing mode that applies to the maximum physical address.
  final String mode;

  /// Creates a new [DomainCpuMaxPhysAddr].
  /// [bits] Defines the number of bits that represent the maximum physical address.
  /// [limit] Sets an upper limit on the maximum physical address that can be used by the domain.
  /// [mode] Specifies the addressing mode that applies to the maximum physical address.
  DomainCpuMaxPhysAddr({
    this.bits,
    this.limit,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bits': ?bits,
      'limit': ?limit,
      'mode': mode,
    };
  }

  factory DomainCpuMaxPhysAddr.fromMap(Map<String, dynamic> map) {
    return DomainCpuMaxPhysAddr(
      bits: map['bits'] == null ? null : map['bits'] as double,
      limit: map['limit'] == null ? null : map['limit'] as double,
      mode: map['mode'] as String,
    );
  }
}

