// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_smbios_bios_entry.dart';

class DomainSysInfoSmbiosBios {
  /// Specifies individual entries for the BIOS information in the SMBIOS.
  final pulumi.Input<List<DomainSysInfoSmbiosBiosEntry>>? entries;

  /// Creates a new [DomainSysInfoSmbiosBios].
  /// [entries] Specifies individual entries for the BIOS information in the SMBIOS.
  DomainSysInfoSmbiosBios({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<DomainSysInfoSmbiosBiosEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<DomainSysInfoSmbiosBiosEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainSysInfoSmbiosBios.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosBios(
      entries: map['entries'] == null ? null : (pulumi.Input.decodeList<DomainSysInfoSmbiosBiosEntry>(map['entries']!, (value) => DomainSysInfoSmbiosBiosEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

