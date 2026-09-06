// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A dashboard part metadata.
class DashboardPartMetadata {
  /// Inputs to dashboard part.
  final pulumi.Input<List<dynamic>?>? inputs;
  /// Settings of dashboard part.
  final pulumi.Input<Map<String, dynamic>?>? settings;
  /// The type of dashboard part.
  final pulumi.Input<String> type;

  /// Creates a new [DashboardPartMetadata].
  /// [inputs] Inputs to dashboard part.
  /// [settings] Settings of dashboard part.
  /// [type] The type of dashboard part.
  const DashboardPartMetadata({
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
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
