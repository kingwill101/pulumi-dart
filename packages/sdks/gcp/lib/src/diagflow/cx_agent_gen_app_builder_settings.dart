// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxAgentGenAppBuilderSettings {
  /// The full name of the Gen App Builder engine related to this agent if there is one.
  /// Format: projects/{Project ID}/locations/{Location ID}/collections/{Collection ID}/engines/{Engine ID}
  final pulumi.Input<String> engine;

  /// Creates a new [CxAgentGenAppBuilderSettings].
  /// [engine] The full name of the Gen App Builder engine related to this agent if there is one.
  CxAgentGenAppBuilderSettings({required this.engine});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'engine': engine};
  }

  factory CxAgentGenAppBuilderSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentGenAppBuilderSettings(
      engine: pulumi.Input.fromValue(map['engine'] as String),
    );
  }
}
