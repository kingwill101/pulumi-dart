// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_smbios_base_board.dart';
import 'domain_sys_info_smbios_bios.dart';
import 'domain_sys_info_smbios_chassis.dart';
import 'domain_sys_info_smbios_memory.dart';
import 'domain_sys_info_smbios_oem_strings.dart';
import 'domain_sys_info_smbios_processor.dart';
import 'domain_sys_info_smbios_system.dart';

class DomainSysInfoSmbios {
  /// Sets the base board information for the SMBIOS configuration.
  final pulumi.Input<List<DomainSysInfoSmbiosBaseBoard>?>? baseBoards;
  /// Configures the BIOS information for the virtual machine's SMBIOS.
  final pulumi.Input<DomainSysInfoSmbiosBios?>? bios;
  /// Configures the chassis information for the SMBIOS configuration.
  final pulumi.Input<DomainSysInfoSmbiosChassis?>? chassis;
  /// Configures the memory information for the SMBIOS system.
  final pulumi.Input<List<DomainSysInfoSmbiosMemory>?>? memories;
  /// Configures OEM strings within the SMBIOS information.
  final pulumi.Input<DomainSysInfoSmbiosOemStrings?>? oemStrings;
  /// Sets processor information in the SMBIOS configuration.
  final pulumi.Input<List<DomainSysInfoSmbiosProcessor>?>? processors;
  /// Configures system information for the SMBIOS configuration.
  final pulumi.Input<DomainSysInfoSmbiosSystem?>? system;

  /// Creates a new [DomainSysInfoSmbios].
  /// [baseBoards] Sets the base board information for the SMBIOS configuration.
  /// [bios] Configures the BIOS information for the virtual machine's SMBIOS.
  /// [chassis] Configures the chassis information for the SMBIOS configuration.
  /// [memories] Configures the memory information for the SMBIOS system.
  /// [oemStrings] Configures OEM strings within the SMBIOS information.
  /// [processors] Sets processor information in the SMBIOS configuration.
  /// [system] Configures system information for the SMBIOS configuration.
  const DomainSysInfoSmbios({
    this.baseBoards,
    this.bios,
    this.chassis,
    this.memories,
    this.oemStrings,
    this.processors,
    this.system,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseBoards': ?pulumi.Input.mapOptionalInputValue<List<DomainSysInfoSmbiosBaseBoard>, List<Map<String, dynamic>>>(baseBoards, (value) => pulumi.Input.encodeList<DomainSysInfoSmbiosBaseBoard, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bios': ?pulumi.Input.mapOptionalInputValue<DomainSysInfoSmbiosBios, Map<String, dynamic>>(bios, (value) => value.toMap()),
      'chassis': ?pulumi.Input.mapOptionalInputValue<DomainSysInfoSmbiosChassis, Map<String, dynamic>>(chassis, (value) => value.toMap()),
      'memories': ?pulumi.Input.mapOptionalInputValue<List<DomainSysInfoSmbiosMemory>, List<Map<String, dynamic>>>(memories, (value) => pulumi.Input.encodeList<DomainSysInfoSmbiosMemory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'oemStrings': ?pulumi.Input.mapOptionalInputValue<DomainSysInfoSmbiosOemStrings, Map<String, dynamic>>(oemStrings, (value) => value.toMap()),
      'processors': ?pulumi.Input.mapOptionalInputValue<List<DomainSysInfoSmbiosProcessor>, List<Map<String, dynamic>>>(processors, (value) => pulumi.Input.encodeList<DomainSysInfoSmbiosProcessor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'system': ?pulumi.Input.mapOptionalInputValue<DomainSysInfoSmbiosSystem, Map<String, dynamic>>(system, (value) => value.toMap()),
    };
  }

  factory DomainSysInfoSmbios.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbios(
      baseBoards: (() { final guardedValue = map['baseBoards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSysInfoSmbiosBaseBoard>(guardedValue, (value) => DomainSysInfoSmbiosBaseBoard.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bios: (() { final guardedValue = map['bios']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainSysInfoSmbiosBios.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      chassis: (() { final guardedValue = map['chassis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainSysInfoSmbiosChassis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memories: (() { final guardedValue = map['memories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSysInfoSmbiosMemory>(guardedValue, (value) => DomainSysInfoSmbiosMemory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      oemStrings: (() { final guardedValue = map['oemStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainSysInfoSmbiosOemStrings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      processors: (() { final guardedValue = map['processors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSysInfoSmbiosProcessor>(guardedValue, (value) => DomainSysInfoSmbiosProcessor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      system: (() { final guardedValue = map['system']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainSysInfoSmbiosSystem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
