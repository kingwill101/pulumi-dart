// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainMemoryBackingMemoryAllocation {
  /// Sets the mode of memory allocation, determining if it is static, dynamic, or configured otherwise.
  final pulumi.Input<String>? mode;
  /// Specifies the number of threads allocated for managing memory allocation tasks in the domain.
  final pulumi.Input<double>? threads;

  /// Creates a new [DomainMemoryBackingMemoryAllocation].
  /// [mode] Sets the mode of memory allocation, determining if it is static, dynamic, or configured otherwise.
  /// [threads] Specifies the number of threads allocated for managing memory allocation tasks in the domain.
  const DomainMemoryBackingMemoryAllocation({
    this.mode,
    this.threads,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'threads': ?threads,
    };
  }

  factory DomainMemoryBackingMemoryAllocation.fromMap(Map<String, dynamic> map) {
    return DomainMemoryBackingMemoryAllocation(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threads: (() { final guardedValue = map['threads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
