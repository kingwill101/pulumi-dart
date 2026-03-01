// ignore_for_file: unused_element, unnecessary_cast


/// Instruction step details, to be displayed in the Instructions steps section in the connector's page in Sentinel Portal.
class InstructionStepDetailsResponse {
  /// Gets or sets the instruction type parameters settings.
  final dynamic parameters;
  /// Gets or sets the instruction type name.
  final String type;

  /// Creates a new [InstructionStepDetailsResponse].
  /// [parameters] Gets or sets the instruction type parameters settings.
  /// [type] Gets or sets the instruction type name.
  InstructionStepDetailsResponse({
    required this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': parameters,
      'type': type,
    };
  }

  factory InstructionStepDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InstructionStepDetailsResponse(
      parameters: map['parameters'],
      type: map['type'] as String,
    );
  }
}

