// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntryBigqueryTableSpecTableSpec {
  /// (Output)
  /// If the table is a dated shard, i.e., with name pattern [prefix]YYYYMMDD, groupedEntry is the
  /// Data Catalog resource name of the date sharded grouped entry, for example,
  /// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/entries/{entryId}.
  /// Otherwise, groupedEntry is empty.
  final pulumi.Input<String>? groupedEntry;

  /// Creates a new [EntryBigqueryTableSpecTableSpec].
  /// [groupedEntry] (Output)
  EntryBigqueryTableSpecTableSpec({
    this.groupedEntry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupedEntry': ?groupedEntry,
    };
  }

  factory EntryBigqueryTableSpecTableSpec.fromMap(Map<String, dynamic> map) {
    return EntryBigqueryTableSpecTableSpec(
      groupedEntry: map['groupedEntry'] == null ? null : (map['groupedEntry']! as String).input(),
    );
  }
}

