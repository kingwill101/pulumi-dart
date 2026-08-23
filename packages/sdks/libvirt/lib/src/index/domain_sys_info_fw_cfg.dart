// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_fw_cfg_entry.dart';

class DomainSysInfoFwCfg {
  /// Sets individual entries for the firmware configuration.
  final pulumi.Input<List<DomainSysInfoFwCfgEntry>>? entries;

  /// Creates a new [DomainSysInfoFwCfg].
  /// [entries] Sets individual entries for the firmware configuration.
  const DomainSysInfoFwCfg({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<DomainSysInfoFwCfgEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<DomainSysInfoFwCfgEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainSysInfoFwCfg.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoFwCfg(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSysInfoFwCfgEntry>(guardedValue, (value) => DomainSysInfoFwCfgEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
