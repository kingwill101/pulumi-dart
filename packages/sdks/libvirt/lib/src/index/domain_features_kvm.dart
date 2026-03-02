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
      dirtyRing: map['dirtyRing'] == null ? null : (DomainFeaturesKvmDirtyRing.fromMap((map['dirtyRing'] as Map).cast<String, dynamic>())).input(),
      hidden: map['hidden'] == null ? null : (DomainFeaturesKvmHidden.fromMap((map['hidden'] as Map).cast<String, dynamic>())).input(),
      hintDedicated: map['hintDedicated'] == null ? null : (DomainFeaturesKvmHintDedicated.fromMap((map['hintDedicated'] as Map).cast<String, dynamic>())).input(),
      pollControl: map['pollControl'] == null ? null : (DomainFeaturesKvmPollControl.fromMap((map['pollControl'] as Map).cast<String, dynamic>())).input(),
      pvipi: map['pvipi'] == null ? null : (DomainFeaturesKvmPvipi.fromMap((map['pvipi'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

