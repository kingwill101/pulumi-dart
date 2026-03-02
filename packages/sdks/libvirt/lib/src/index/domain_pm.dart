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
  DomainPm({
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
      suspendToDisk: map['suspendToDisk'] == null ? null : (DomainPmSuspendToDisk.fromMap((map['suspendToDisk'] as Map).cast<String, dynamic>())).input(),
      suspendToMem: map['suspendToMem'] == null ? null : (DomainPmSuspendToMem.fromMap((map['suspendToMem'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

