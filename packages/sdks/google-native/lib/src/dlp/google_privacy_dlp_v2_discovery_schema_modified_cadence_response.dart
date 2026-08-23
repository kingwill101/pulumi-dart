// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The cadence at which to update data profiles when a schema is modified.
class GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceResponse {
  /// How frequently profiles may be updated when schemas are modified. Defaults to monthly.
  final pulumi.Input<String> frequency;
  /// The type of events to consider when deciding if the table's schema has been modified and should have the profile updated. Defaults to NEW_COLUMNS.
  final pulumi.Input<List<String>> types;

  /// Creates a new [GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceResponse].
  /// [frequency] How frequently profiles may be updated when schemas are modified. Defaults to monthly.
  /// [types] The type of events to consider when deciding if the table's schema has been modified and should have the profile updated. Defaults to NEW_COLUMNS.
  const GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceResponse({
    required this.frequency,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'types': types,
    };
  }

  factory GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceResponse(
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      types: pulumi.Input.fromValue((map['types'] as List).cast<String>()),
    );
  }
}
