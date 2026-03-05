// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The cadence at which to update data profiles when a table is modified.
class GooglePrivacyDlpV2DiscoveryTableModifiedCadenceResponse {
  /// How frequently data profiles can be updated when tables are modified. Defaults to never.
  final pulumi.Input<String> frequency;
  /// The type of events to consider when deciding if the table has been modified and should have the profile updated. Defaults to MODIFIED_TIMESTAMP.
  final pulumi.Input<List<String>> types;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryTableModifiedCadenceResponse].
  /// [frequency] How frequently data profiles can be updated when tables are modified. Defaults to never.
  /// [types] The type of events to consider when deciding if the table has been modified and should have the profile updated. Defaults to MODIFIED_TIMESTAMP.
  GooglePrivacyDlpV2DiscoveryTableModifiedCadenceResponse({
    required this.frequency,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'types': types,
    };
  }

  factory GooglePrivacyDlpV2DiscoveryTableModifiedCadenceResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoveryTableModifiedCadenceResponse(
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      types: pulumi.Input.fromValue((map['types'] as List).cast<String>()),
    );
  }
}

