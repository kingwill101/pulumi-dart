// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_big_query_target_filter_table_reference.dart';
import 'prevention_discovery_config_target_big_query_target_filter_tables.dart';

class PreventionDiscoveryConfigTargetBigQueryTargetFilter {
  /// Catch-all. This should always be the last filter in the list because anything above it will apply first.
  final pulumi.Input<Map<String, dynamic>>? otherTables;

  /// The table to scan. Discovery configurations including this can only include one DiscoveryTarget (the DiscoveryTarget with this TableReference).
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference
  >?
  tableReference;

  /// A specific set of tables for this filter to apply to. A table collection must be specified in only one filter per config.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetBigQueryTargetFilterTables>?
  tables;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetFilter].
  /// [otherTables] Catch-all. This should always be the last filter in the list because anything above it will apply first.
  /// [tableReference] The table to scan. Discovery configurations including this can only include one DiscoveryTarget (the DiscoveryTarget with this TableReference).
  /// [tables] A specific set of tables for this filter to apply to. A table collection must be specified in only one filter per config.
  PreventionDiscoveryConfigTargetBigQueryTargetFilter({
    this.otherTables,
    this.tableReference,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'otherTables': ?otherTables,
      'tableReference':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference,
            Map<String, dynamic>
          >(tableReference, (value) => value.toMap()),
      'tables':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDiscoveryConfigTargetBigQueryTargetFilterTables,
            Map<String, dynamic>
          >(tables, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilter(
      otherTables: (() {
        final guardedValue = map['otherTables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      tableReference: (() {
        final guardedValue = map['tableReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tables: (() {
        final guardedValue = map['tables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDiscoveryConfigTargetBigQueryTargetFilterTables.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
