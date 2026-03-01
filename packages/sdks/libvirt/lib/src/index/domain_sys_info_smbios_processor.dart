// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_smbios_processor_entry.dart';

class DomainSysInfoSmbiosProcessor {
  /// Specifies individual entries for processor information in the SMBIOS.
  final List<DomainSysInfoSmbiosProcessorEntry>? entries;

  /// Creates a new [DomainSysInfoSmbiosProcessor].
  /// [entries] Specifies individual entries for processor information in the SMBIOS.
  DomainSysInfoSmbiosProcessor({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?entries == null ? null : pulumi.Input.encodeList<DomainSysInfoSmbiosProcessorEntry, Map<String, dynamic>>(entries!, (value) => value.toMap()),
    };
  }

  factory DomainSysInfoSmbiosProcessor.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosProcessor(
      entries: map['entries'] == null ? null : pulumi.Input.decodeList<DomainSysInfoSmbiosProcessorEntry>(map['entries'], (value) => DomainSysInfoSmbiosProcessorEntry.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

