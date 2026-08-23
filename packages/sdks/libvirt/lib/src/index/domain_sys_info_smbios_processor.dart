// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_smbios_processor_entry.dart';

class DomainSysInfoSmbiosProcessor {
  /// Specifies individual entries for processor information in the SMBIOS.
  final pulumi.Input<List<DomainSysInfoSmbiosProcessorEntry>>? entries;

  /// Creates a new [DomainSysInfoSmbiosProcessor].
  /// [entries] Specifies individual entries for processor information in the SMBIOS.
  const DomainSysInfoSmbiosProcessor({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<DomainSysInfoSmbiosProcessorEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<DomainSysInfoSmbiosProcessorEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainSysInfoSmbiosProcessor.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosProcessor(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSysInfoSmbiosProcessorEntry>(guardedValue, (value) => DomainSysInfoSmbiosProcessorEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
