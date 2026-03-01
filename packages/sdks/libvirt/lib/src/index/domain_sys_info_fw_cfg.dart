// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_fw_cfg_entry.dart';

class DomainSysInfoFwCfg {
  /// Sets individual entries for the firmware configuration.
  final List<DomainSysInfoFwCfgEntry>? entries;

  /// Creates a new [DomainSysInfoFwCfg].
  /// [entries] Sets individual entries for the firmware configuration.
  DomainSysInfoFwCfg({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?entries == null ? null : pulumi.Input.encodeList<DomainSysInfoFwCfgEntry, Map<String, dynamic>>(entries!, (value) => value.toMap()),
    };
  }

  factory DomainSysInfoFwCfg.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoFwCfg(
      entries: map['entries'] == null ? null : pulumi.Input.decodeList<DomainSysInfoFwCfgEntry>(map['entries'], (value) => DomainSysInfoFwCfgEntry.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

