// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_big_query_target_filter_tables_include_regexes_pattern.dart';

class PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes {
  /// The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern>>? patterns;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes].
  /// [patterns] The group of regular expression patterns to match against one or more resources. Maximum of 100 entries. The sum of all lengths of regular expressions can't exceed 10 KiB.
  const PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes({
    this.patterns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patterns': ?pulumi.Input.mapOptionalInputValue<List<PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern>, List<Map<String, dynamic>>>(patterns, (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexes(
      patterns: (() { final guardedValue = map['patterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern>(guardedValue, (value) => PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
