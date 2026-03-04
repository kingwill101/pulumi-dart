// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table_types.dart';
import 'google_privacy_dlp_v2_discovery_big_query_conditions_type_collection.dart';
import 'google_privacy_dlp_v2_or_conditions.dart';

/// Requirements that must be true before a table is scanned in discovery for the first time. There is an AND relationship between the top-level attributes. Additionally, minimum conditions with an OR relationship that must be met before Cloud DLP scans a table can be set (like a minimum row count or a minimum table age).
class GooglePrivacyDlpV2DiscoveryBigQueryConditions {
  /// BigQuery table must have been created after this date. Used to avoid backfilling.
  final pulumi.Input<String>? createdAfter;

  /// At least one of the conditions must be true for a table to be scanned.
  final pulumi.Input<GooglePrivacyDlpV2OrConditions>? orConditions;

  /// Restrict discovery to categories of table types.
  final pulumi.Input<
    GooglePrivacyDlpV2DiscoveryBigQueryConditionsTypeCollection
  >?
  typeCollection;

  /// Restrict discovery to specific table types.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTableTypes>? types;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryBigQueryConditions].
  /// [createdAfter] BigQuery table must have been created after this date. Used to avoid backfilling.
  /// [orConditions] At least one of the conditions must be true for a table to be scanned.
  /// [typeCollection] Restrict discovery to categories of table types.
  /// [types] Restrict discovery to specific table types.
  GooglePrivacyDlpV2DiscoveryBigQueryConditions({
    this.createdAfter,
    this.orConditions,
    this.typeCollection,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAfter': ?createdAfter,
      'orConditions':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2OrConditions,
            Map<String, dynamic>
          >(orConditions, (value) => value.toMap()),
      'typeCollection':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2DiscoveryBigQueryConditionsTypeCollection,
            String
          >(typeCollection, (value) => value.wireValue),
      'types':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2BigQueryTableTypes,
            Map<String, dynamic>
          >(types, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DiscoveryBigQueryConditions.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2DiscoveryBigQueryConditions(
      createdAfter: (() {
        final guardedValue = map['createdAfter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orConditions: (() {
        final guardedValue = map['orConditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2OrConditions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      typeCollection: (() {
        final guardedValue = map['typeCollection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2DiscoveryBigQueryConditionsTypeCollection.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      types: (() {
        final guardedValue = map['types'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2BigQueryTableTypes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
