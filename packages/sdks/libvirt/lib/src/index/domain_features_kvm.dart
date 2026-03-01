// ignore_for_file: unused_element, unnecessary_cast

import 'domain_features_kvm_dirty_ring.dart';
import 'domain_features_kvm_hidden.dart';
import 'domain_features_kvm_hint_dedicated.dart';
import 'domain_features_kvm_poll_control.dart';
import 'domain_features_kvm_pvipi.dart';

class DomainFeaturesKvm {
  /// Configures the dirty ring feature for KVM, which optimizes memory management during virtual machine execution.
  final DomainFeaturesKvmDirtyRing? dirtyRing;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesKvmHidden? hidden;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesKvmHintDedicated? hintDedicated;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesKvmPollControl? pollControl;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesKvmPvipi? pvipi;

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
      'dirtyRing': ?dirtyRing == null ? null : dirtyRing!.toMap(),
      'hidden': ?hidden == null ? null : hidden!.toMap(),
      'hintDedicated': ?hintDedicated == null ? null : hintDedicated!.toMap(),
      'pollControl': ?pollControl == null ? null : pollControl!.toMap(),
      'pvipi': ?pvipi == null ? null : pvipi!.toMap(),
    };
  }

  factory DomainFeaturesKvm.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesKvm(
      dirtyRing: map['dirtyRing'] == null ? null : DomainFeaturesKvmDirtyRing.fromMap((map['dirtyRing'] as Map).cast<String, dynamic>()),
      hidden: map['hidden'] == null ? null : DomainFeaturesKvmHidden.fromMap((map['hidden'] as Map).cast<String, dynamic>()),
      hintDedicated: map['hintDedicated'] == null ? null : DomainFeaturesKvmHintDedicated.fromMap((map['hintDedicated'] as Map).cast<String, dynamic>()),
      pollControl: map['pollControl'] == null ? null : DomainFeaturesKvmPollControl.fromMap((map['pollControl'] as Map).cast<String, dynamic>()),
      pvipi: map['pvipi'] == null ? null : DomainFeaturesKvmPvipi.fromMap((map['pvipi'] as Map).cast<String, dynamic>()),
    );
  }
}

