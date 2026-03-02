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
  final pulumi.Input<bool>? acpi;
  /// Enables or disables AIA (Advanced Interrupt Affinity) support for the domain, which optimizes interrupt handling.
  final pulumi.Input<DomainFeaturesAia>? aia;
  /// Configures APIC (Advanced Programmable Interrupt Controller) support for the domain, which is essential for handling interrupts.
  final pulumi.Input<DomainFeaturesApic>? apic;
  /// Configures asynchronous teardown behavior for the domain, enhancing performance during shutdown processes.
  final pulumi.Input<DomainFeaturesAsyncTeardown>? asyncTeardown;
  /// Defines the set of capabilities that can be enabled for the domain, influencing its operational features and constraints.
  final pulumi.Input<DomainFeaturesCapabilities>? capabilities;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesCcfAssist>? ccfAssist;
  /// Configures whether the domain supports CFPC features.
  final pulumi.Input<DomainFeaturesCfpc>? cfpc;
  /// Configures whether the domain supports GIC (Generic Interrupt Controller) features.
  final pulumi.Input<DomainFeaturesGic>? gic;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHap>? hap;
  /// Configures whether the domain supports Hardware Paging Translation (HPT).
  final pulumi.Input<DomainFeaturesHpt>? hpt;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHtm>? htm;
  /// Configures the availability of Hyper-V specific features for the domain.
  final pulumi.Input<DomainFeaturesHyperV>? hyperV;
  /// Configures the Instruction Based Sampling feature for the domain.
  final pulumi.Input<DomainFeaturesIbs>? ibs;
  /// Controls the configuration of the I/O APIC feature in the domain.
  final pulumi.Input<DomainFeaturesIoapic>? ioapic;
  /// Configures the availability of KVM specific features for the domain.
  final pulumi.Input<DomainFeaturesKvm>? kvm;
  /// Controls the management of Model Specific Registers (MSRs) for the guest, allowing for low-level CPU features.
  final pulumi.Input<DomainFeaturesMsrs>? msrs;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesNestedHv>? nestedHv;
  /// Enables PAE (Physical Address Extension) feature, allowing the guest to support more than 4GB of RAM.
  final pulumi.Input<bool>? pae;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesPmu>? pmu;
  /// Configures the private network feature, allowing for isolated network configurations within the guest.
  final pulumi.Input<bool>? privNet;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesPs2>? ps2;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesPvSpinlock>? pvSpinlock;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesRas>? ras;
  /// Configures Shared Bandwidth Bridge Capability (SBBC) to optimize bandwidth sharing among VMs.
  final pulumi.Input<DomainFeaturesSbbc>? sbbc;
  /// Enables Secure Memory Management (SMM), providing additional security features for the guest.
  final pulumi.Input<DomainFeaturesSmm>? smm;
  /// Enables Trusted Computing Group (TCG) features for secure computing environments.
  final pulumi.Input<DomainFeaturesTcg>? tcg;
  /// Enables Viridian features for enhanced virtualization capabilities on Windows guests.
  final pulumi.Input<bool>? viridian;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesVmCoreInfo>? vmCoreInfo;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesVmPort>? vmPort;
  /// Enables or disables features specific to Xen virtualization, controlling various aspects of guest management.
  final pulumi.Input<DomainFeaturesXen>? xen;

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
  /// [vmCoreInfo] Enables or disables support for PS/2 devices in the virtual machine.
  /// [vmPort] Enables or disables support for PS/2 devices in the virtual machine.
  /// [xen] Enables or disables features specific to Xen virtualization, controlling various aspects of guest management.
  DomainFeatures({
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
      'vmCoreInfo': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesVmCoreInfo, Map<String, dynamic>>(vmCoreInfo, (value) => value.toMap()),
      'vmPort': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesVmPort, Map<String, dynamic>>(vmPort, (value) => value.toMap()),
      'xen': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesXen, Map<String, dynamic>>(xen, (value) => value.toMap()),
    };
  }

  factory DomainFeatures.fromMap(Map<String, dynamic> map) {
    return DomainFeatures(
      acpi: map['acpi'] == null ? null : (map['acpi']! as bool).input(),
      aia: map['aia'] == null ? null : (DomainFeaturesAia.fromMap((map['aia']! as Map).cast<String, dynamic>())).input(),
      apic: map['apic'] == null ? null : (DomainFeaturesApic.fromMap((map['apic']! as Map).cast<String, dynamic>())).input(),
      asyncTeardown: map['asyncTeardown'] == null ? null : (DomainFeaturesAsyncTeardown.fromMap((map['asyncTeardown']! as Map).cast<String, dynamic>())).input(),
      capabilities: map['capabilities'] == null ? null : (DomainFeaturesCapabilities.fromMap((map['capabilities']! as Map).cast<String, dynamic>())).input(),
      ccfAssist: map['ccfAssist'] == null ? null : (DomainFeaturesCcfAssist.fromMap((map['ccfAssist']! as Map).cast<String, dynamic>())).input(),
      cfpc: map['cfpc'] == null ? null : (DomainFeaturesCfpc.fromMap((map['cfpc']! as Map).cast<String, dynamic>())).input(),
      gic: map['gic'] == null ? null : (DomainFeaturesGic.fromMap((map['gic']! as Map).cast<String, dynamic>())).input(),
      hap: map['hap'] == null ? null : (DomainFeaturesHap.fromMap((map['hap']! as Map).cast<String, dynamic>())).input(),
      hpt: map['hpt'] == null ? null : (DomainFeaturesHpt.fromMap((map['hpt']! as Map).cast<String, dynamic>())).input(),
      htm: map['htm'] == null ? null : (DomainFeaturesHtm.fromMap((map['htm']! as Map).cast<String, dynamic>())).input(),
      hyperV: map['hyperV'] == null ? null : (DomainFeaturesHyperV.fromMap((map['hyperV']! as Map).cast<String, dynamic>())).input(),
      ibs: map['ibs'] == null ? null : (DomainFeaturesIbs.fromMap((map['ibs']! as Map).cast<String, dynamic>())).input(),
      ioapic: map['ioapic'] == null ? null : (DomainFeaturesIoapic.fromMap((map['ioapic']! as Map).cast<String, dynamic>())).input(),
      kvm: map['kvm'] == null ? null : (DomainFeaturesKvm.fromMap((map['kvm']! as Map).cast<String, dynamic>())).input(),
      msrs: map['msrs'] == null ? null : (DomainFeaturesMsrs.fromMap((map['msrs']! as Map).cast<String, dynamic>())).input(),
      nestedHv: map['nestedHv'] == null ? null : (DomainFeaturesNestedHv.fromMap((map['nestedHv']! as Map).cast<String, dynamic>())).input(),
      pae: map['pae'] == null ? null : (map['pae']! as bool).input(),
      pmu: map['pmu'] == null ? null : (DomainFeaturesPmu.fromMap((map['pmu']! as Map).cast<String, dynamic>())).input(),
      privNet: map['privNet'] == null ? null : (map['privNet']! as bool).input(),
      ps2: map['ps2'] == null ? null : (DomainFeaturesPs2.fromMap((map['ps2']! as Map).cast<String, dynamic>())).input(),
      pvSpinlock: map['pvSpinlock'] == null ? null : (DomainFeaturesPvSpinlock.fromMap((map['pvSpinlock']! as Map).cast<String, dynamic>())).input(),
      ras: map['ras'] == null ? null : (DomainFeaturesRas.fromMap((map['ras']! as Map).cast<String, dynamic>())).input(),
      sbbc: map['sbbc'] == null ? null : (DomainFeaturesSbbc.fromMap((map['sbbc']! as Map).cast<String, dynamic>())).input(),
      smm: map['smm'] == null ? null : (DomainFeaturesSmm.fromMap((map['smm']! as Map).cast<String, dynamic>())).input(),
      tcg: map['tcg'] == null ? null : (DomainFeaturesTcg.fromMap((map['tcg']! as Map).cast<String, dynamic>())).input(),
      viridian: map['viridian'] == null ? null : (map['viridian']! as bool).input(),
      vmCoreInfo: map['vmCoreInfo'] == null ? null : (DomainFeaturesVmCoreInfo.fromMap((map['vmCoreInfo']! as Map).cast<String, dynamic>())).input(),
      vmPort: map['vmPort'] == null ? null : (DomainFeaturesVmPort.fromMap((map['vmPort']! as Map).cast<String, dynamic>())).input(),
      xen: map['xen'] == null ? null : (DomainFeaturesXen.fromMap((map['xen']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

