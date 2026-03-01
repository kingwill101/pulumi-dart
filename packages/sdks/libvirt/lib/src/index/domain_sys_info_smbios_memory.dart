// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_smbios_memory_entry.dart';

class DomainSysInfoSmbiosMemory {
  /// Sets individual entries for the memory information in the SMBIOS configuration.
  final List<DomainSysInfoSmbiosMemoryEntry>? entries;

  /// Creates a new [DomainSysInfoSmbiosMemory].
  /// [entries] Sets individual entries for the memory information in the SMBIOS configuration.
  DomainSysInfoSmbiosMemory({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?entries == null ? null : pulumi.Input.encodeList<DomainSysInfoSmbiosMemoryEntry, Map<String, dynamic>>(entries!, (value) => value.toMap()),
    };
  }

  factory DomainSysInfoSmbiosMemory.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosMemory(
      entries: map['entries'] == null ? null : pulumi.Input.decodeList<DomainSysInfoSmbiosMemoryEntry>(map['entries'], (value) => DomainSysInfoSmbiosMemoryEntry.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

