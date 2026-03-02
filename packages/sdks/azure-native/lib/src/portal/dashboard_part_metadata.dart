// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A dashboard part metadata.
class DashboardPartMetadata {
  /// Inputs to dashboard part.
  final pulumi.Input<List<dynamic>>? inputs;
  /// Settings of dashboard part.
  final pulumi.Input<Map<String, dynamic>>? settings;
  /// The type of dashboard part.
  final pulumi.Input<String> type;

  /// Creates a new [DashboardPartMetadata].
  /// [inputs] Inputs to dashboard part.
  /// [settings] Settings of dashboard part.
  /// [type] The type of dashboard part.
  DashboardPartMetadata({
    this.inputs,
    this.settings,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': ?inputs,
      'settings': ?settings,
      'type': type,
    };
  }

  factory DashboardPartMetadata.fromMap(Map<String, dynamic> map) {
    return DashboardPartMetadata(
      inputs: map['inputs'] == null ? null : ((map['inputs']! as List).cast<dynamic>()).input(),
      settings: map['settings'] == null ? null : ((map['settings']! as Map).cast<String, dynamic>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

