// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_features_hyper_vavic.dart';
import 'domain_features_hyper_vemsr_bitmap.dart';
import 'domain_features_hyper_vevmcs.dart';
import 'domain_features_hyper_vfrequencies.dart';
import 'domain_features_hyper_vipi.dart';
import 'domain_features_hyper_vre_enlightenment.dart';
import 'domain_features_hyper_vrelaxed.dart';
import 'domain_features_hyper_vreset.dart';
import 'domain_features_hyper_vruntime.dart';
import 'domain_features_hyper_vspinlocks.dart';
import 'domain_features_hyper_vstimer.dart';
import 'domain_features_hyper_vsynic.dart';
import 'domain_features_hyper_vtlb_flush.dart';
import 'domain_features_hyper_vvapic.dart';
import 'domain_features_hyper_vvendor_id.dart';
import 'domain_features_hyper_vvp_index.dart';
import 'domain_features_hyper_vxmm_input.dart';

class DomainFeaturesHyperV {
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVAvic>? avic;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVEmsrBitmap>? emsrBitmap;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVEvmcs>? evmcs;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVFrequencies>? frequencies;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVIpi>? ipi;
  /// Sets the mode of operation for Hyper-V features in the domain.
  final pulumi.Input<String>? mode;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVReEnlightenment>? reEnlightenment;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVRelaxed>? relaxed;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVReset>? reset;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVRuntime>? runtime;
  /// Controls the spinlock feature settings for Hyper-V.
  final pulumi.Input<DomainFeaturesHyperVSpinlocks>? spinlocks;
  /// Configures synthetic timer functionality for Hyper-V.
  final pulumi.Input<DomainFeaturesHyperVStimer>? stimer;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVSynic>? synic;
  /// Controls the Translation Lookaside Buffer (TLB) flush functionality for Hyper-V.
  final pulumi.Input<DomainFeaturesHyperVTlbFlush>? tlbFlush;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVVapic>? vapic;
  /// Configures the vendor ID presented to the guest operating system by Hyper-V.
  final pulumi.Input<DomainFeaturesHyperVVendorId>? vendorId;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVVpIndex>? vpIndex;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVXmmInput>? xmmInput;

  /// Creates a new [DomainFeaturesHyperV].
  /// [avic] Enables or disables support for PS/2 devices in the virtual machine.
  /// [emsrBitmap] Enables or disables support for PS/2 devices in the virtual machine.
  /// [evmcs] Enables or disables support for PS/2 devices in the virtual machine.
  /// [frequencies] Enables or disables support for PS/2 devices in the virtual machine.
  /// [ipi] Enables or disables support for PS/2 devices in the virtual machine.
  /// [mode] Sets the mode of operation for Hyper-V features in the domain.
  /// [reEnlightenment] Enables or disables support for PS/2 devices in the virtual machine.
  /// [relaxed] Enables or disables support for PS/2 devices in the virtual machine.
  /// [reset] Enables or disables support for PS/2 devices in the virtual machine.
  /// [runtime] Enables or disables support for PS/2 devices in the virtual machine.
  /// [spinlocks] Controls the spinlock feature settings for Hyper-V.
  /// [stimer] Configures synthetic timer functionality for Hyper-V.
  /// [synic] Enables or disables support for PS/2 devices in the virtual machine.
  /// [tlbFlush] Controls the Translation Lookaside Buffer (TLB) flush functionality for Hyper-V.
  /// [vapic] Enables or disables support for PS/2 devices in the virtual machine.
  /// [vendorId] Configures the vendor ID presented to the guest operating system by Hyper-V.
  /// [vpIndex] Enables or disables support for PS/2 devices in the virtual machine.
  /// [xmmInput] Enables or disables support for PS/2 devices in the virtual machine.
  const DomainFeaturesHyperV({
    this.avic,
    this.emsrBitmap,
    this.evmcs,
    this.frequencies,
    this.ipi,
    this.mode,
    this.reEnlightenment,
    this.relaxed,
    this.reset,
    this.runtime,
    this.spinlocks,
    this.stimer,
    this.synic,
    this.tlbFlush,
    this.vapic,
    this.vendorId,
    this.vpIndex,
    this.xmmInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avic': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVAvic, Map<String, dynamic>>(avic, (value) => value.toMap()),
      'emsrBitmap': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVEmsrBitmap, Map<String, dynamic>>(emsrBitmap, (value) => value.toMap()),
      'evmcs': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVEvmcs, Map<String, dynamic>>(evmcs, (value) => value.toMap()),
      'frequencies': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVFrequencies, Map<String, dynamic>>(frequencies, (value) => value.toMap()),
      'ipi': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVIpi, Map<String, dynamic>>(ipi, (value) => value.toMap()),
      'mode': ?mode,
      'reEnlightenment': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVReEnlightenment, Map<String, dynamic>>(reEnlightenment, (value) => value.toMap()),
      'relaxed': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVRelaxed, Map<String, dynamic>>(relaxed, (value) => value.toMap()),
      'reset': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVReset, Map<String, dynamic>>(reset, (value) => value.toMap()),
      'runtime': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVRuntime, Map<String, dynamic>>(runtime, (value) => value.toMap()),
      'spinlocks': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVSpinlocks, Map<String, dynamic>>(spinlocks, (value) => value.toMap()),
      'stimer': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVStimer, Map<String, dynamic>>(stimer, (value) => value.toMap()),
      'synic': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVSynic, Map<String, dynamic>>(synic, (value) => value.toMap()),
      'tlbFlush': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVTlbFlush, Map<String, dynamic>>(tlbFlush, (value) => value.toMap()),
      'vapic': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVVapic, Map<String, dynamic>>(vapic, (value) => value.toMap()),
      'vendorId': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVVendorId, Map<String, dynamic>>(vendorId, (value) => value.toMap()),
      'vpIndex': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVVpIndex, Map<String, dynamic>>(vpIndex, (value) => value.toMap()),
      'xmmInput': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVXmmInput, Map<String, dynamic>>(xmmInput, (value) => value.toMap()),
    };
  }

  factory DomainFeaturesHyperV.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperV(
      avic: (() { final guardedValue = map['avic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVAvic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emsrBitmap: (() { final guardedValue = map['emsrBitmap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVEmsrBitmap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      evmcs: (() { final guardedValue = map['evmcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVEvmcs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frequencies: (() { final guardedValue = map['frequencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVFrequencies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipi: (() { final guardedValue = map['ipi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVIpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reEnlightenment: (() { final guardedValue = map['reEnlightenment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVReEnlightenment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      relaxed: (() { final guardedValue = map['relaxed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVRelaxed.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reset: (() { final guardedValue = map['reset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVReset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVRuntime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spinlocks: (() { final guardedValue = map['spinlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVSpinlocks.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stimer: (() { final guardedValue = map['stimer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVStimer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      synic: (() { final guardedValue = map['synic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVSynic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlbFlush: (() { final guardedValue = map['tlbFlush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVTlbFlush.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vapic: (() { final guardedValue = map['vapic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVVapic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vendorId: (() { final guardedValue = map['vendorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVVendorId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpIndex: (() { final guardedValue = map['vpIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVVpIndex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xmmInput: (() { final guardedValue = map['xmmInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVXmmInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

