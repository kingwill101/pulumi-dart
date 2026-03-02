// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_big_query_target_conditions_or_conditions.dart';
import 'prevention_discovery_config_target_big_query_target_conditions_types.dart';

class PreventionDiscoveryConfigTargetBigQueryTargetConditions {
  /// File store must have been created after this date. Used to avoid backfilling. A timestamp in RFC3339 UTC "Zulu" format with nanosecond resolution and upto nine fractional digits.
  final pulumi.Input<String>? createdAfter;
  /// At least one of the conditions must be true for a table to be scanned.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetBigQueryTargetConditionsOrConditions>? orConditions;
  /// Restrict discovery to categories of table types. Currently view, materialized view, snapshot and non-biglake external tables are supported.
  /// Possible values are: `BIG_QUERY_COLLECTION_ALL_TYPES`, `BIG_QUERY_COLLECTION_ONLY_SUPPORTED_TYPES`.
  final pulumi.Input<String>? typeCollection;
  /// Data profiles will only be generated for the database resource types specified in this field. If not specified, defaults to [DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES].
  /// Each value may be one of: `DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES`, `DATABASE_RESOURCE_TYPE_TABLE`.
  final pulumi.Input<PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes>? types;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetConditions].
  /// [createdAfter] File store must have been created after this date. Used to avoid backfilling. A timestamp in RFC3339 UTC "Zulu" format with nanosecond resolution and upto nine fractional digits.
  /// [orConditions] At least one of the conditions must be true for a table to be scanned.
  /// [typeCollection] Restrict discovery to categories of table types. Currently view, materialized view, snapshot and non-biglake external tables are supported.
  /// [types] Data profiles will only be generated for the database resource types specified in this field. If not specified, defaults to [DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES].
  PreventionDiscoveryConfigTargetBigQueryTargetConditions({
    this.createdAfter,
    this.orConditions,
    this.typeCollection,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAfter': ?createdAfter,
      'orConditions': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetBigQueryTargetConditionsOrConditions, Map<String, dynamic>>(orConditions, (value) => value.toMap()),
      'typeCollection': ?typeCollection,
      'types': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes, Map<String, dynamic>>(types, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetConditions.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetConditions(
      createdAfter: map['createdAfter'] == null ? null : (map['createdAfter'] as String).input(),
      orConditions: map['orConditions'] == null ? null : (PreventionDiscoveryConfigTargetBigQueryTargetConditionsOrConditions.fromMap((map['orConditions'] as Map).cast<String, dynamic>())).input(),
      typeCollection: map['typeCollection'] == null ? null : (map['typeCollection'] as String).input(),
      types: map['types'] == null ? null : (PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes.fromMap((map['types'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

