// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_discovery_schema_modified_cadence_response.dart';
import 'google_privacy_dlp_v2_discovery_table_modified_cadence_response.dart';

/// What must take place for a profile to be updated and how frequently it should occur. New tables are scanned as quickly as possible depending on system capacity.
class GooglePrivacyDlpV2DiscoveryGenerationCadenceResponse {
  /// Governs when to update data profiles when a schema is modified.
  final pulumi.Input<GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceResponse> schemaModifiedCadence;
  /// Governs when to update data profiles when a table is modified.
  final pulumi.Input<GooglePrivacyDlpV2DiscoveryTableModifiedCadenceResponse> tableModifiedCadence;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryGenerationCadenceResponse].
  /// [schemaModifiedCadence] Governs when to update data profiles when a schema is modified.
  /// [tableModifiedCadence] Governs when to update data profiles when a table is modified.
  const GooglePrivacyDlpV2DiscoveryGenerationCadenceResponse({
    required this.schemaModifiedCadence,
    required this.tableModifiedCadence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaModifiedCadence': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceResponse, Map<String, dynamic>>(schemaModifiedCadence, (value) => value.toMap()),
      'tableModifiedCadence': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DiscoveryTableModifiedCadenceResponse, Map<String, dynamic>>(tableModifiedCadence, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DiscoveryGenerationCadenceResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoveryGenerationCadenceResponse(
      schemaModifiedCadence: pulumi.Input.fromValue(GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceResponse.fromMap((map['schemaModifiedCadence']! as Map).cast<String, dynamic>())),
      tableModifiedCadence: pulumi.Input.fromValue(GooglePrivacyDlpV2DiscoveryTableModifiedCadenceResponse.fromMap((map['tableModifiedCadence']! as Map).cast<String, dynamic>())),
    );
  }
}

