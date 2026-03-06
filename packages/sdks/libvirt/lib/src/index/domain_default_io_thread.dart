// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultIoThread {
  /// Configures the maximum number of threads in the default IO thread pool, allowing for scalable IO resource handling.
  final pulumi.Input<double>? poolMax;
  /// Sets the minimum number of threads in the default IO thread pool, ensuring baseline IO resource allocation.
  final pulumi.Input<double>? poolMin;

  /// Creates a new [DomainDefaultIoThread].
  /// [poolMax] Configures the maximum number of threads in the default IO thread pool, allowing for scalable IO resource handling.
  /// [poolMin] Sets the minimum number of threads in the default IO thread pool, ensuring baseline IO resource allocation.
  const DomainDefaultIoThread({
    this.poolMax,
    this.poolMin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolMax': ?poolMax,
      'poolMin': ?poolMin,
    };
  }

  factory DomainDefaultIoThread.fromMap(Map<String, dynamic> map) {
    return DomainDefaultIoThread(
      poolMax: (() { final guardedValue = map['poolMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      poolMin: (() { final guardedValue = map['poolMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

