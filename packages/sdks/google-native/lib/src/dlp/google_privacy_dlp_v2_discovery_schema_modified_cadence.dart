// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_discovery_schema_modified_cadence_frequency.dart';
import 'google_privacy_dlp_v2_discovery_schema_modified_cadence_types_item.dart';

/// The cadence at which to update data profiles when a schema is modified.
class GooglePrivacyDlpV2DiscoverySchemaModifiedCadence {
  /// How frequently profiles may be updated when schemas are modified. Defaults to monthly.
  final pulumi.Input<GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceFrequency>? frequency;
  /// The type of events to consider when deciding if the table's schema has been modified and should have the profile updated. Defaults to NEW_COLUMNS.
  final pulumi.Input<List<GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem>>? types;

  /// Creates a new [GooglePrivacyDlpV2DiscoverySchemaModifiedCadence].
  /// [frequency] How frequently profiles may be updated when schemas are modified. Defaults to monthly.
  /// [types] The type of events to consider when deciding if the table's schema has been modified and should have the profile updated. Defaults to NEW_COLUMNS.
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence({
    this.frequency,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceFrequency, String>(frequency, (value) => value.value),
      'types': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem>, List<String>>(types, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem, String>(value, (value) => value.value)),
    };
  }

  factory GooglePrivacyDlpV2DiscoverySchemaModifiedCadence.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoverySchemaModifiedCadence(
      frequency: map['frequency'] == null ? null : (GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceFrequency.fromValue(map['frequency']! as String)).input(),
      types: map['types'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem>(map['types']!, (value) => GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem.fromValue(value as String))).input(),
    );
  }
}

