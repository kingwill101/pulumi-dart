// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_smbios_base_board_entry.dart';

class DomainSysInfoSmbiosBaseBoard {
  /// Defines individual entries for the base board information.
  final pulumi.Input<List<DomainSysInfoSmbiosBaseBoardEntry>>? entries;

  /// Creates a new [DomainSysInfoSmbiosBaseBoard].
  /// [entries] Defines individual entries for the base board information.
  DomainSysInfoSmbiosBaseBoard({this.entries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainSysInfoSmbiosBaseBoardEntry>,
            List<Map<String, dynamic>>
          >(
            entries,
            (value) =>
                pulumi.Input.encodeList<
                  DomainSysInfoSmbiosBaseBoardEntry,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainSysInfoSmbiosBaseBoard.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosBaseBoard(
      entries: (() {
        final guardedValue = map['entries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainSysInfoSmbiosBaseBoardEntry>(
            guardedValue,
            (value) => DomainSysInfoSmbiosBaseBoardEntry.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
