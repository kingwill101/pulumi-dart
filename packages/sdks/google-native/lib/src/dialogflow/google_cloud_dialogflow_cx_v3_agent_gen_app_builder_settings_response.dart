// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for Gen App Builder.
class GoogleCloudDialogflowCxV3AgentGenAppBuilderSettingsResponse {
  /// The full name of the Gen App Builder engine related to this agent if there is one. Format: `projects/{Project ID}/locations/{Location ID}/collections/{Collection ID}/engines/{Engine ID}`
  final pulumi.Input<String> engine;

  /// Creates a new [GoogleCloudDialogflowCxV3AgentGenAppBuilderSettingsResponse].
  /// [engine] The full name of the Gen App Builder engine related to this agent if there is one. Format: `projects/{Project ID}/locations/{Location ID}/collections/{Collection ID}/engines/{Engine ID}`
  const GoogleCloudDialogflowCxV3AgentGenAppBuilderSettingsResponse({
    required this.engine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
    };
  }

  factory GoogleCloudDialogflowCxV3AgentGenAppBuilderSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AgentGenAppBuilderSettingsResponse(
      engine: pulumi.Input.fromValue(map['engine'] as String),
    );
  }
}

