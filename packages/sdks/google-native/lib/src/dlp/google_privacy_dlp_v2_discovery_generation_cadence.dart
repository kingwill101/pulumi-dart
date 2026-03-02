// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_discovery_schema_modified_cadence.dart';
import 'google_privacy_dlp_v2_discovery_table_modified_cadence.dart';

/// What must take place for a profile to be updated and how frequently it should occur. New tables are scanned as quickly as possible depending on system capacity.
class GooglePrivacyDlpV2DiscoveryGenerationCadence {
  /// Governs when to update data profiles when a schema is modified.
  final pulumi.Input<GooglePrivacyDlpV2DiscoverySchemaModifiedCadence>? schemaModifiedCadence;
  /// Governs when to update data profiles when a table is modified.
  final pulumi.Input<GooglePrivacyDlpV2DiscoveryTableModifiedCadence>? tableModifiedCadence;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryGenerationCadence].
  /// [schemaModifiedCadence] Governs when to update data profiles when a schema is modified.
  /// [tableModifiedCadence] Governs when to update data profiles when a table is modified.
  GooglePrivacyDlpV2DiscoveryGenerationCadence({
    this.schemaModifiedCadence,
    this.tableModifiedCadence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaModifiedCadence': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2DiscoverySchemaModifiedCadence, Map<String, dynamic>>(schemaModifiedCadence, (value) => value.toMap()),
      'tableModifiedCadence': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2DiscoveryTableModifiedCadence, Map<String, dynamic>>(tableModifiedCadence, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DiscoveryGenerationCadence.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoveryGenerationCadence(
      schemaModifiedCadence: map['schemaModifiedCadence'] == null ? null : (GooglePrivacyDlpV2DiscoverySchemaModifiedCadence.fromMap((map['schemaModifiedCadence']! as Map).cast<String, dynamic>())).input(),
      tableModifiedCadence: map['tableModifiedCadence'] == null ? null : (GooglePrivacyDlpV2DiscoveryTableModifiedCadence.fromMap((map['tableModifiedCadence']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

