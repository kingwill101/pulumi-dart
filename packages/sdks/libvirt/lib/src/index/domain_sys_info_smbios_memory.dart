// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_smbios_memory_entry.dart';

class DomainSysInfoSmbiosMemory {
  /// Sets individual entries for the memory information in the SMBIOS configuration.
  final pulumi.Input<List<DomainSysInfoSmbiosMemoryEntry>>? entries;

  /// Creates a new [DomainSysInfoSmbiosMemory].
  /// [entries] Sets individual entries for the memory information in the SMBIOS configuration.
  DomainSysInfoSmbiosMemory({this.entries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainSysInfoSmbiosMemoryEntry>,
            List<Map<String, dynamic>>
          >(
            entries,
            (value) =>
                pulumi.Input.encodeList<
                  DomainSysInfoSmbiosMemoryEntry,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainSysInfoSmbiosMemory.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosMemory(
      entries: (() {
        final guardedValue = map['entries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainSysInfoSmbiosMemoryEntry>(
            guardedValue,
            (value) => DomainSysInfoSmbiosMemoryEntry.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
