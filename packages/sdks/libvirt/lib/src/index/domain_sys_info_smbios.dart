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
  final pulumi.Input<List<DomainSysInfoSmbiosBaseBoard>>? baseBoards;
  /// Configures the BIOS information for the virtual machine's SMBIOS.
  final pulumi.Input<DomainSysInfoSmbiosBios>? bios;
  /// Configures the chassis information for the SMBIOS configuration.
  final pulumi.Input<DomainSysInfoSmbiosChassis>? chassis;
  /// Configures the memory information for the SMBIOS system.
  final pulumi.Input<List<DomainSysInfoSmbiosMemory>>? memories;
  /// Configures OEM strings within the SMBIOS information.
  final pulumi.Input<DomainSysInfoSmbiosOemStrings>? oemStrings;
  /// Sets processor information in the SMBIOS configuration.
  final pulumi.Input<List<DomainSysInfoSmbiosProcessor>>? processors;
  /// Configures system information for the SMBIOS configuration.
  final pulumi.Input<DomainSysInfoSmbiosSystem>? system;

  /// Creates a new [DomainSysInfoSmbios].
  /// [baseBoards] Sets the base board information for the SMBIOS configuration.
  /// [bios] Configures the BIOS information for the virtual machine's SMBIOS.
  /// [chassis] Configures the chassis information for the SMBIOS configuration.
  /// [memories] Configures the memory information for the SMBIOS system.
  /// [oemStrings] Configures OEM strings within the SMBIOS information.
  /// [processors] Sets processor information in the SMBIOS configuration.
  /// [system] Configures system information for the SMBIOS configuration.
  DomainSysInfoSmbios({
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
      baseBoards: map['baseBoards'] == null ? null : (pulumi.Input.decodeList<DomainSysInfoSmbiosBaseBoard>(map['baseBoards'], (value) => DomainSysInfoSmbiosBaseBoard.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bios: map['bios'] == null ? null : (DomainSysInfoSmbiosBios.fromMap((map['bios'] as Map).cast<String, dynamic>())).input(),
      chassis: map['chassis'] == null ? null : (DomainSysInfoSmbiosChassis.fromMap((map['chassis'] as Map).cast<String, dynamic>())).input(),
      memories: map['memories'] == null ? null : (pulumi.Input.decodeList<DomainSysInfoSmbiosMemory>(map['memories'], (value) => DomainSysInfoSmbiosMemory.fromMap((value as Map).cast<String, dynamic>()))).input(),
      oemStrings: map['oemStrings'] == null ? null : (DomainSysInfoSmbiosOemStrings.fromMap((map['oemStrings'] as Map).cast<String, dynamic>())).input(),
      processors: map['processors'] == null ? null : (pulumi.Input.decodeList<DomainSysInfoSmbiosProcessor>(map['processors'], (value) => DomainSysInfoSmbiosProcessor.fromMap((value as Map).cast<String, dynamic>()))).input(),
      system: map['system'] == null ? null : (DomainSysInfoSmbiosSystem.fromMap((map['system'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

