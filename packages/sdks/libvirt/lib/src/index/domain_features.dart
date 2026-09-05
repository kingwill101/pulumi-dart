// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_features_aia.dart';
import 'domain_features_apic.dart';
import 'domain_features_async_teardown.dart';
import 'domain_features_capabilities.dart';
import 'domain_features_ccf_assist.dart';
import 'domain_features_cfpc.dart';
import 'domain_features_gic.dart';
import 'domain_features_hap.dart';
import 'domain_features_hpt.dart';
import 'domain_features_htm.dart';
import 'domain_features_hyper_v.dart';
import 'domain_features_ibs.dart';
import 'domain_features_ioapic.dart';
import 'domain_features_kvm.dart';
import 'domain_features_msrs.dart';
import 'domain_features_nested_hv.dart';
import 'domain_features_pmu.dart';
import 'domain_features_ps2.dart';
import 'domain_features_pv_spinlock.dart';
import 'domain_features_ras.dart';
import 'domain_features_sbbc.dart';
import 'domain_features_smm.dart';
import 'domain_features_tcg.dart';
import 'domain_features_vm_core_info.dart';
import 'domain_features_vm_port.dart';
import 'domain_features_xen.dart';

class DomainFeatures {
  /// Controls ACPI support for the domain, allowing for power management and sleep states within the guest OS.
  final pulumi.Input<bool?>? acpi;
  /// Enables or disables AIA (Advanced Interrupt Affinity) support for the domain, which optimizes interrupt handling.
  final pulumi.Input<DomainFeaturesAia?>? aia;
  /// Configures APIC (Advanced Programmable Interrupt Controller) support for the domain, which is essential for handling interrupts.
  final pulumi.Input<DomainFeaturesApic?>? apic;
  /// Configures asynchronous teardown behavior for the domain, enhancing performance during shutdown processes.
  final pulumi.Input<DomainFeaturesAsyncTeardown?>? asyncTeardown;
  /// Defines the set of capabilities that can be enabled for the domain, influencing its operational features and constraints.
  final pulumi.Input<DomainFeaturesCapabilities?>? capabilities;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesCcfAssist?>? ccfAssist;
  /// Configures whether the domain supports CFPC features.
  final pulumi.Input<DomainFeaturesCfpc?>? cfpc;
  /// Configures whether the domain supports GIC (Generic Interrupt Controller) features.
  final pulumi.Input<DomainFeaturesGic?>? gic;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHap?>? hap;
  /// Configures whether the domain supports Hardware Paging Translation (HPT).
  final pulumi.Input<DomainFeaturesHpt?>? hpt;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHtm?>? htm;
  /// Configures the availability of Hyper-V specific features for the domain.
  final pulumi.Input<DomainFeaturesHyperV?>? hyperV;
  /// Configures the Instruction Based Sampling feature for the domain.
  final pulumi.Input<DomainFeaturesIbs?>? ibs;
  /// Controls the configuration of the I/O APIC feature in the domain.
  final pulumi.Input<DomainFeaturesIoapic?>? ioapic;
  /// Configures the availability of KVM specific features for the domain.
  final pulumi.Input<DomainFeaturesKvm?>? kvm;
  /// Controls the management of Model Specific Registers (MSRs) for the guest, allowing for low-level CPU features.
  final pulumi.Input<DomainFeaturesMsrs?>? msrs;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesNestedHv?>? nestedHv;
  /// Enables PAE (Physical Address Extension) feature, allowing the guest to support more than 4GB of RAM.
  final pulumi.Input<bool?>? pae;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesPmu?>? pmu;
  /// Configures the private network feature, allowing for isolated network configurations within the guest.
  final pulumi.Input<bool?>? privNet;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesPs2?>? ps2;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesPvSpinlock?>? pvSpinlock;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesRas?>? ras;
  /// Configures Shared Bandwidth Bridge Capability (SBBC) to optimize bandwidth sharing among VMs.
  final pulumi.Input<DomainFeaturesSbbc?>? sbbc;
  /// Enables Secure Memory Management (SMM), providing additional security features for the guest.
  final pulumi.Input<DomainFeaturesSmm?>? smm;
  /// Enables Trusted Computing Group (TCG) features for secure computing environments.
  final pulumi.Input<DomainFeaturesTcg?>? tcg;
  /// Enables Viridian features for enhanced virtualization capabilities on Windows guests.
  final pulumi.Input<bool?>? viridian;
  final pulumi.Input<bool?>? virtualization;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesVmCoreInfo?>? vmCoreInfo;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesVmPort?>? vmPort;
  /// Enables or disables features specific to Xen virtualization, controlling various aspects of guest management.
  final pulumi.Input<DomainFeaturesXen?>? xen;

  /// Creates a new [DomainFeatures].
  /// [acpi] Controls ACPI support for the domain, allowing for power management and sleep states within the guest OS.
  /// [aia] Enables or disables AIA (Advanced Interrupt Affinity) support for the domain, which optimizes interrupt handling.
  /// [apic] Configures APIC (Advanced Programmable Interrupt Controller) support for the domain, which is essential for handling interrupts.
  /// [asyncTeardown] Configures asynchronous teardown behavior for the domain, enhancing performance during shutdown processes.
  /// [capabilities] Defines the set of capabilities that can be enabled for the domain, influencing its operational features and constraints.
  /// [ccfAssist] Enables or disables support for PS/2 devices in the virtual machine.
  /// [cfpc] Configures whether the domain supports CFPC features.
  /// [gic] Configures whether the domain supports GIC (Generic Interrupt Controller) features.
  /// [hap] Enables or disables support for PS/2 devices in the virtual machine.
  /// [hpt] Configures whether the domain supports Hardware Paging Translation (HPT).
  /// [htm] Enables or disables support for PS/2 devices in the virtual machine.
  /// [hyperV] Configures the availability of Hyper-V specific features for the domain.
  /// [ibs] Configures the Instruction Based Sampling feature for the domain.
  /// [ioapic] Controls the configuration of the I/O APIC feature in the domain.
  /// [kvm] Configures the availability of KVM specific features for the domain.
  /// [msrs] Controls the management of Model Specific Registers (MSRs) for the guest, allowing for low-level CPU features.
  /// [nestedHv] Enables or disables support for PS/2 devices in the virtual machine.
  /// [pae] Enables PAE (Physical Address Extension) feature, allowing the guest to support more than 4GB of RAM.
  /// [pmu] Enables or disables support for PS/2 devices in the virtual machine.
  /// [privNet] Configures the private network feature, allowing for isolated network configurations within the guest.
  /// [ps2] Enables or disables support for PS/2 devices in the virtual machine.
  /// [pvSpinlock] Enables or disables support for PS/2 devices in the virtual machine.
  /// [ras] Enables or disables support for PS/2 devices in the virtual machine.
  /// [sbbc] Configures Shared Bandwidth Bridge Capability (SBBC) to optimize bandwidth sharing among VMs.
  /// [smm] Enables Secure Memory Management (SMM), providing additional security features for the guest.
  /// [tcg] Enables Trusted Computing Group (TCG) features for secure computing environments.
  /// [viridian] Enables Viridian features for enhanced virtualization capabilities on Windows guests.
  /// [virtualization] Optional.
  /// [vmCoreInfo] Enables or disables support for PS/2 devices in the virtual machine.
  /// [vmPort] Enables or disables support for PS/2 devices in the virtual machine.
  /// [xen] Enables or disables features specific to Xen virtualization, controlling various aspects of guest management.
  const DomainFeatures({
    this.acpi,
    this.aia,
    this.apic,
    this.asyncTeardown,
    this.capabilities,
    this.ccfAssist,
    this.cfpc,
    this.gic,
    this.hap,
    this.hpt,
    this.htm,
    this.hyperV,
    this.ibs,
    this.ioapic,
    this.kvm,
    this.msrs,
    this.nestedHv,
    this.pae,
    this.pmu,
    this.privNet,
    this.ps2,
    this.pvSpinlock,
    this.ras,
    this.sbbc,
    this.smm,
    this.tcg,
    this.viridian,
    this.virtualization,
    this.vmCoreInfo,
    this.vmPort,
    this.xen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi,
      'aia': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesAia, Map<String, dynamic>>(aia, (value) => value.toMap()),
      'apic': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesApic, Map<String, dynamic>>(apic, (value) => value.toMap()),
      'asyncTeardown': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesAsyncTeardown, Map<String, dynamic>>(asyncTeardown, (value) => value.toMap()),
      'capabilities': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilities, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'ccfAssist': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCcfAssist, Map<String, dynamic>>(ccfAssist, (value) => value.toMap()),
      'cfpc': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCfpc, Map<String, dynamic>>(cfpc, (value) => value.toMap()),
      'gic': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesGic, Map<String, dynamic>>(gic, (value) => value.toMap()),
      'hap': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHap, Map<String, dynamic>>(hap, (value) => value.toMap()),
      'hpt': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHpt, Map<String, dynamic>>(hpt, (value) => value.toMap()),
      'htm': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHtm, Map<String, dynamic>>(htm, (value) => value.toMap()),
      'hyperV': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperV, Map<String, dynamic>>(hyperV, (value) => value.toMap()),
      'ibs': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesIbs, Map<String, dynamic>>(ibs, (value) => value.toMap()),
      'ioapic': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesIoapic, Map<String, dynamic>>(ioapic, (value) => value.toMap()),
      'kvm': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesKvm, Map<String, dynamic>>(kvm, (value) => value.toMap()),
      'msrs': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesMsrs, Map<String, dynamic>>(msrs, (value) => value.toMap()),
      'nestedHv': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesNestedHv, Map<String, dynamic>>(nestedHv, (value) => value.toMap()),
      'pae': ?pae,
      'pmu': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesPmu, Map<String, dynamic>>(pmu, (value) => value.toMap()),
      'privNet': ?privNet,
      'ps2': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesPs2, Map<String, dynamic>>(ps2, (value) => value.toMap()),
      'pvSpinlock': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesPvSpinlock, Map<String, dynamic>>(pvSpinlock, (value) => value.toMap()),
      'ras': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesRas, Map<String, dynamic>>(ras, (value) => value.toMap()),
      'sbbc': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesSbbc, Map<String, dynamic>>(sbbc, (value) => value.toMap()),
      'smm': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesSmm, Map<String, dynamic>>(smm, (value) => value.toMap()),
      'tcg': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesTcg, Map<String, dynamic>>(tcg, (value) => value.toMap()),
      'viridian': ?viridian,
      'virtualization': ?virtualization,
      'vmCoreInfo': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesVmCoreInfo, Map<String, dynamic>>(vmCoreInfo, (value) => value.toMap()),
      'vmPort': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesVmPort, Map<String, dynamic>>(vmPort, (value) => value.toMap()),
      'xen': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesXen, Map<String, dynamic>>(xen, (value) => value.toMap()),
    };
  }

  factory DomainFeatures.fromMap(Map<String, dynamic> map) {
    return DomainFeatures(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      aia: (() { final guardedValue = map['aia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesAia.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apic: (() { final guardedValue = map['apic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesApic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      asyncTeardown: (() { final guardedValue = map['asyncTeardown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesAsyncTeardown.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ccfAssist: (() { final guardedValue = map['ccfAssist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCcfAssist.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cfpc: (() { final guardedValue = map['cfpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCfpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gic: (() { final guardedValue = map['gic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesGic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hap: (() { final guardedValue = map['hap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hpt: (() { final guardedValue = map['hpt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHpt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      htm: (() { final guardedValue = map['htm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHtm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hyperV: (() { final guardedValue = map['hyperV']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperV.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ibs: (() { final guardedValue = map['ibs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesIbs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ioapic: (() { final guardedValue = map['ioapic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesIoapic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kvm: (() { final guardedValue = map['kvm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesKvm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      msrs: (() { final guardedValue = map['msrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesMsrs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nestedHv: (() { final guardedValue = map['nestedHv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesNestedHv.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pae: (() { final guardedValue = map['pae']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pmu: (() { final guardedValue = map['pmu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesPmu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privNet: (() { final guardedValue = map['privNet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ps2: (() { final guardedValue = map['ps2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesPs2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pvSpinlock: (() { final guardedValue = map['pvSpinlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesPvSpinlock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ras: (() { final guardedValue = map['ras']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesRas.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sbbc: (() { final guardedValue = map['sbbc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesSbbc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smm: (() { final guardedValue = map['smm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesSmm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tcg: (() { final guardedValue = map['tcg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesTcg.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      viridian: (() { final guardedValue = map['viridian']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualization: (() { final guardedValue = map['virtualization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vmCoreInfo: (() { final guardedValue = map['vmCoreInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesVmCoreInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmPort: (() { final guardedValue = map['vmPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesVmPort.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xen: (() { final guardedValue = map['xen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesXen.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
