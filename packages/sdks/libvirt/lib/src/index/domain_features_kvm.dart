// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_features_kvm_dirty_ring.dart';
import 'domain_features_kvm_hidden.dart';
import 'domain_features_kvm_hint_dedicated.dart';
import 'domain_features_kvm_poll_control.dart';
import 'domain_features_kvm_pvipi.dart';

class DomainFeaturesKvm {
  /// Configures the dirty ring feature for KVM, which optimizes memory management during virtual machine execution.
  final pulumi.Input<DomainFeaturesKvmDirtyRing>? dirtyRing;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesKvmHidden>? hidden;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesKvmHintDedicated>? hintDedicated;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesKvmPollControl>? pollControl;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesKvmPvipi>? pvipi;

  /// Creates a new [DomainFeaturesKvm].
  /// [dirtyRing] Configures the dirty ring feature for KVM, which optimizes memory management during virtual machine execution.
  /// [hidden] Enables or disables support for PS/2 devices in the virtual machine.
  /// [hintDedicated] Enables or disables support for PS/2 devices in the virtual machine.
  /// [pollControl] Enables or disables support for PS/2 devices in the virtual machine.
  /// [pvipi] Enables or disables support for PS/2 devices in the virtual machine.
  DomainFeaturesKvm({
    this.dirtyRing,
    this.hidden,
    this.hintDedicated,
    this.pollControl,
    this.pvipi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dirtyRing': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesKvmDirtyRing, Map<String, dynamic>>(dirtyRing, (value) => value.toMap()),
      'hidden': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesKvmHidden, Map<String, dynamic>>(hidden, (value) => value.toMap()),
      'hintDedicated': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesKvmHintDedicated, Map<String, dynamic>>(hintDedicated, (value) => value.toMap()),
      'pollControl': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesKvmPollControl, Map<String, dynamic>>(pollControl, (value) => value.toMap()),
      'pvipi': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesKvmPvipi, Map<String, dynamic>>(pvipi, (value) => value.toMap()),
    };
  }

  factory DomainFeaturesKvm.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesKvm(
      dirtyRing: (() { final guardedValue = map['dirtyRing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesKvmDirtyRing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hidden: (() { final guardedValue = map['hidden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesKvmHidden.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hintDedicated: (() { final guardedValue = map['hintDedicated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesKvmHintDedicated.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pollControl: (() { final guardedValue = map['pollControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesKvmPollControl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pvipi: (() { final guardedValue = map['pvipi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesKvmPvipi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

