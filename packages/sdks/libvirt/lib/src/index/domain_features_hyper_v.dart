// ignore_for_file: unused_element, unnecessary_cast

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
  final DomainFeaturesHyperVAvic? avic;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVEmsrBitmap? emsrBitmap;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVEvmcs? evmcs;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVFrequencies? frequencies;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVIpi? ipi;
  /// Sets the mode of operation for Hyper-V features in the domain.
  final String? mode;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVReEnlightenment? reEnlightenment;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVRelaxed? relaxed;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVReset? reset;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVRuntime? runtime;
  /// Controls the spinlock feature settings for Hyper-V.
  final DomainFeaturesHyperVSpinlocks? spinlocks;
  /// Configures synthetic timer functionality for Hyper-V.
  final DomainFeaturesHyperVStimer? stimer;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVSynic? synic;
  /// Controls the Translation Lookaside Buffer (TLB) flush functionality for Hyper-V.
  final DomainFeaturesHyperVTlbFlush? tlbFlush;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVVapic? vapic;
  /// Configures the vendor ID presented to the guest operating system by Hyper-V.
  final DomainFeaturesHyperVVendorId? vendorId;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVVpIndex? vpIndex;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVXmmInput? xmmInput;

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
  DomainFeaturesHyperV({
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
      'avic': ?avic == null ? null : avic!.toMap(),
      'emsrBitmap': ?emsrBitmap == null ? null : emsrBitmap!.toMap(),
      'evmcs': ?evmcs == null ? null : evmcs!.toMap(),
      'frequencies': ?frequencies == null ? null : frequencies!.toMap(),
      'ipi': ?ipi == null ? null : ipi!.toMap(),
      'mode': ?mode,
      'reEnlightenment': ?reEnlightenment == null ? null : reEnlightenment!.toMap(),
      'relaxed': ?relaxed == null ? null : relaxed!.toMap(),
      'reset': ?reset == null ? null : reset!.toMap(),
      'runtime': ?runtime == null ? null : runtime!.toMap(),
      'spinlocks': ?spinlocks == null ? null : spinlocks!.toMap(),
      'stimer': ?stimer == null ? null : stimer!.toMap(),
      'synic': ?synic == null ? null : synic!.toMap(),
      'tlbFlush': ?tlbFlush == null ? null : tlbFlush!.toMap(),
      'vapic': ?vapic == null ? null : vapic!.toMap(),
      'vendorId': ?vendorId == null ? null : vendorId!.toMap(),
      'vpIndex': ?vpIndex == null ? null : vpIndex!.toMap(),
      'xmmInput': ?xmmInput == null ? null : xmmInput!.toMap(),
    };
  }

  factory DomainFeaturesHyperV.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperV(
      avic: map['avic'] == null ? null : DomainFeaturesHyperVAvic.fromMap((map['avic'] as Map).cast<String, dynamic>()),
      emsrBitmap: map['emsrBitmap'] == null ? null : DomainFeaturesHyperVEmsrBitmap.fromMap((map['emsrBitmap'] as Map).cast<String, dynamic>()),
      evmcs: map['evmcs'] == null ? null : DomainFeaturesHyperVEvmcs.fromMap((map['evmcs'] as Map).cast<String, dynamic>()),
      frequencies: map['frequencies'] == null ? null : DomainFeaturesHyperVFrequencies.fromMap((map['frequencies'] as Map).cast<String, dynamic>()),
      ipi: map['ipi'] == null ? null : DomainFeaturesHyperVIpi.fromMap((map['ipi'] as Map).cast<String, dynamic>()),
      mode: map['mode'] == null ? null : map['mode'] as String,
      reEnlightenment: map['reEnlightenment'] == null ? null : DomainFeaturesHyperVReEnlightenment.fromMap((map['reEnlightenment'] as Map).cast<String, dynamic>()),
      relaxed: map['relaxed'] == null ? null : DomainFeaturesHyperVRelaxed.fromMap((map['relaxed'] as Map).cast<String, dynamic>()),
      reset: map['reset'] == null ? null : DomainFeaturesHyperVReset.fromMap((map['reset'] as Map).cast<String, dynamic>()),
      runtime: map['runtime'] == null ? null : DomainFeaturesHyperVRuntime.fromMap((map['runtime'] as Map).cast<String, dynamic>()),
      spinlocks: map['spinlocks'] == null ? null : DomainFeaturesHyperVSpinlocks.fromMap((map['spinlocks'] as Map).cast<String, dynamic>()),
      stimer: map['stimer'] == null ? null : DomainFeaturesHyperVStimer.fromMap((map['stimer'] as Map).cast<String, dynamic>()),
      synic: map['synic'] == null ? null : DomainFeaturesHyperVSynic.fromMap((map['synic'] as Map).cast<String, dynamic>()),
      tlbFlush: map['tlbFlush'] == null ? null : DomainFeaturesHyperVTlbFlush.fromMap((map['tlbFlush'] as Map).cast<String, dynamic>()),
      vapic: map['vapic'] == null ? null : DomainFeaturesHyperVVapic.fromMap((map['vapic'] as Map).cast<String, dynamic>()),
      vendorId: map['vendorId'] == null ? null : DomainFeaturesHyperVVendorId.fromMap((map['vendorId'] as Map).cast<String, dynamic>()),
      vpIndex: map['vpIndex'] == null ? null : DomainFeaturesHyperVVpIndex.fromMap((map['vpIndex'] as Map).cast<String, dynamic>()),
      xmmInput: map['xmmInput'] == null ? null : DomainFeaturesHyperVXmmInput.fromMap((map['xmmInput'] as Map).cast<String, dynamic>()),
    );
  }
}

