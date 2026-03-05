// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_big_query_target_filter_tables_include_regexes.dart';

class PreventionDiscoveryConfigTargetBigQueryTargetFilterTables {
  /// A collection of regular expressions to match a BQ table against.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes>? includeRegexes;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetFilterTables].
  /// [includeRegexes] A collection of regular expressions to match a BQ table against.
  PreventionDiscoveryConfigTargetBigQueryTargetFilterTables({
    this.includeRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeRegexes': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes, Map<String, dynamic>>(includeRegexes, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilterTables.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilterTables(
      includeRegexes: (() { final guardedValue = map['includeRegexes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

