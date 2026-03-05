// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentDaprComponentMetadata {
  /// The name of the Metadata configuration item.
  final pulumi.Input<String> name;
  /// The name of a secret specified in the `secrets` block that contains the value for this metadata configuration item.
  final pulumi.Input<String>? secretName;
  /// The value for this metadata configuration item.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentDaprComponentMetadata].
  /// [name] The name of the Metadata configuration item.
  /// [secretName] The name of a secret specified in the `secrets` block that contains the value for this metadata configuration item.
  /// [value] The value for this metadata configuration item.
  EnvironmentDaprComponentMetadata({
    required this.name,
    this.secretName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secretName': ?secretName,
      'value': ?value,
    };
  }

  factory EnvironmentDaprComponentMetadata.fromMap(Map<String, dynamic> map) {
    return EnvironmentDaprComponentMetadata(
      name: pulumi.Input.fromValue(map['name'] as String),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

