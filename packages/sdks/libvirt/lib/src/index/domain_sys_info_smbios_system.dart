// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_smbios_system_entry.dart';

class DomainSysInfoSmbiosSystem {
  /// Defines individual entries for system information in the SMBIOS configuration.
  final pulumi.Input<List<DomainSysInfoSmbiosSystemEntry>>? entries;

  /// Creates a new [DomainSysInfoSmbiosSystem].
  /// [entries] Defines individual entries for system information in the SMBIOS configuration.
  const DomainSysInfoSmbiosSystem({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<DomainSysInfoSmbiosSystemEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<DomainSysInfoSmbiosSystemEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainSysInfoSmbiosSystem.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosSystem(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSysInfoSmbiosSystemEntry>(guardedValue, (value) => DomainSysInfoSmbiosSystemEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

