// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Instruction step details, to be displayed in the Instructions steps section in the connector's page in Sentinel Portal.
class InstructionStepDetails {
  /// Gets or sets the instruction type parameters settings.
  final pulumi.Input<dynamic> parameters;
  /// Gets or sets the instruction type name.
  final pulumi.Input<String> type;

  /// Creates a new [InstructionStepDetails].
  /// [parameters] Gets or sets the instruction type parameters settings.
  /// [type] Gets or sets the instruction type name.
  InstructionStepDetails({
    required this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': parameters,
      'type': type,
    };
  }

  factory InstructionStepDetails.fromMap(Map<String, dynamic> map) {
    return InstructionStepDetails(
      parameters: (map['parameters']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

