// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_smbios_chassis_entry.dart';

class DomainSysInfoSmbiosChassis {
  /// Defines individual entries for the chassis information in the SMBIOS configuration.
  final pulumi.Input<List<DomainSysInfoSmbiosChassisEntry>>? entries;

  /// Creates a new [DomainSysInfoSmbiosChassis].
  /// [entries] Defines individual entries for the chassis information in the SMBIOS configuration.
  const DomainSysInfoSmbiosChassis({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<DomainSysInfoSmbiosChassisEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<DomainSysInfoSmbiosChassisEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainSysInfoSmbiosChassis.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosChassis(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSysInfoSmbiosChassisEntry>(guardedValue, (value) => DomainSysInfoSmbiosChassisEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
