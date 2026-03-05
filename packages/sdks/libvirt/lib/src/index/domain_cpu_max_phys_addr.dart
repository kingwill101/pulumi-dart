// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuMaxPhysAddr {
  /// Defines the number of bits that represent the maximum physical address.
  final pulumi.Input<double>? bits;
  /// Sets an upper limit on the maximum physical address that can be used by the domain.
  final pulumi.Input<double>? limit;
  /// Specifies the addressing mode that applies to the maximum physical address.
  final pulumi.Input<String> mode;

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
      bits: (() { final guardedValue = map['bits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

