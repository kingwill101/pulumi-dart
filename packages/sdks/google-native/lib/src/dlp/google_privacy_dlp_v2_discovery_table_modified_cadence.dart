// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_discovery_table_modified_cadence_frequency.dart';
import 'google_privacy_dlp_v2_discovery_table_modified_cadence_types_item.dart';

/// The cadence at which to update data profiles when a table is modified.
class GooglePrivacyDlpV2DiscoveryTableModifiedCadence {
  /// How frequently data profiles can be updated when tables are modified. Defaults to never.
  final pulumi.Input<GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency>? frequency;
  /// The type of events to consider when deciding if the table has been modified and should have the profile updated. Defaults to MODIFIED_TIMESTAMP.
  final pulumi.Input<List<GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem>>? types;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryTableModifiedCadence].
  /// [frequency] How frequently data profiles can be updated when tables are modified. Defaults to never.
  /// [types] The type of events to consider when deciding if the table has been modified and should have the profile updated. Defaults to MODIFIED_TIMESTAMP.
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence({
    this.frequency,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency, String>(frequency, (value) => value.wireValue),
      'types': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem>, List<String>>(types, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem, String>(value, (value) => value.wireValue)),
    };
  }

  factory GooglePrivacyDlpV2DiscoveryTableModifiedCadence.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoveryTableModifiedCadence(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency.fromValue(guardedValue as String)); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem>(guardedValue, (value) => GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem.fromValue(value as String))); })(),
    );
  }
}

