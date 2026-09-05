// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_fw_cfg.dart';
import 'domain_sys_info_smbios.dart';

class DomainSysInfo {
  /// Configures the firmware configuration settings for the virtual machine.
  final pulumi.Input<DomainSysInfoFwCfg?>? fwCfg;
  /// Configures the SMBIOS system information for the virtual machine.
  final pulumi.Input<DomainSysInfoSmbios?>? smbios;

  /// Creates a new [DomainSysInfo].
  /// [fwCfg] Configures the firmware configuration settings for the virtual machine.
  /// [smbios] Configures the SMBIOS system information for the virtual machine.
  const DomainSysInfo({
    this.fwCfg,
    this.smbios,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fwCfg': ?pulumi.Input.mapOptionalInputValue<DomainSysInfoFwCfg, Map<String, dynamic>>(fwCfg, (value) => value.toMap()),
      'smbios': ?pulumi.Input.mapOptionalInputValue<DomainSysInfoSmbios, Map<String, dynamic>>(smbios, (value) => value.toMap()),
    };
  }

  factory DomainSysInfo.fromMap(Map<String, dynamic> map) {
    return DomainSysInfo(
      fwCfg: (() { final guardedValue = map['fwCfg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainSysInfoFwCfg.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smbios: (() { final guardedValue = map['smbios']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainSysInfoSmbios.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
