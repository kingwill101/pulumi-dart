// ignore_for_file: unused_element, unnecessary_cast

import 'domain_sys_info_fw_cfg.dart';
import 'domain_sys_info_smbios.dart';

class DomainSysInfo {
  /// Configures the firmware configuration settings for the virtual machine.
  final DomainSysInfoFwCfg? fwCfg;
  /// Configures the SMBIOS system information for the virtual machine.
  final DomainSysInfoSmbios? smbios;

  /// Creates a new [DomainSysInfo].
  /// [fwCfg] Configures the firmware configuration settings for the virtual machine.
  /// [smbios] Configures the SMBIOS system information for the virtual machine.
  DomainSysInfo({
    this.fwCfg,
    this.smbios,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fwCfg': ?fwCfg == null ? null : fwCfg!.toMap(),
      'smbios': ?smbios == null ? null : smbios!.toMap(),
    };
  }

  factory DomainSysInfo.fromMap(Map<String, dynamic> map) {
    return DomainSysInfo(
      fwCfg: map['fwCfg'] == null ? null : DomainSysInfoFwCfg.fromMap((map['fwCfg'] as Map).cast<String, dynamic>()),
      smbios: map['smbios'] == null ? null : DomainSysInfoSmbios.fromMap((map['smbios'] as Map).cast<String, dynamic>()),
    );
  }
}

