// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerSchedulePipeline {
  /// Reference pipeline name.
  final pulumi.Input<String> name;
  /// The pipeline parameters that the trigger will act upon.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [TriggerSchedulePipeline].
  /// [name] Reference pipeline name.
  /// [parameters] The pipeline parameters that the trigger will act upon.
  TriggerSchedulePipeline({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory TriggerSchedulePipeline.fromMap(Map<String, dynamic> map) {
    return TriggerSchedulePipeline(
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
    );
  }
}

