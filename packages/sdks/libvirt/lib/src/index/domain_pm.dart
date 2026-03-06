// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_pm_suspend_to_disk.dart';
import 'domain_pm_suspend_to_mem.dart';

class DomainPm {
  /// Configures the suspend to disk feature for power management.
  final pulumi.Input<DomainPmSuspendToDisk>? suspendToDisk;
  /// Configures the suspend to disk feature for power management.
  final pulumi.Input<DomainPmSuspendToMem>? suspendToMem;

  /// Creates a new [DomainPm].
  /// [suspendToDisk] Configures the suspend to disk feature for power management.
  /// [suspendToMem] Configures the suspend to disk feature for power management.
  const DomainPm({
    this.suspendToDisk,
    this.suspendToMem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suspendToDisk': ?pulumi.Input.mapOptionalInputValue<DomainPmSuspendToDisk, Map<String, dynamic>>(suspendToDisk, (value) => value.toMap()),
      'suspendToMem': ?pulumi.Input.mapOptionalInputValue<DomainPmSuspendToMem, Map<String, dynamic>>(suspendToMem, (value) => value.toMap()),
    };
  }

  factory DomainPm.fromMap(Map<String, dynamic> map) {
    return DomainPm(
      suspendToDisk: (() { final guardedValue = map['suspendToDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainPmSuspendToDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      suspendToMem: (() { final guardedValue = map['suspendToMem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainPmSuspendToMem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

