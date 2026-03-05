// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instruction_step_details_response.dart';

/// Instruction steps to enable the connector.
class InstructionStepResponse {
  /// Gets or sets the instruction step description.
  final pulumi.Input<String>? description;
  /// Gets or sets the inner instruction steps details.
  /// For Example: instruction step 1 might contain inner instruction steps: [instruction step 1.1, instruction step 1.2].
  final pulumi.Input<List<InstructionStepResponse>>? innerSteps;
  /// Gets or sets the instruction step details.
  final pulumi.Input<List<InstructionStepDetailsResponse>>? instructions;
  /// Gets or sets the instruction step title.
  final pulumi.Input<String>? title;

  /// Creates a new [InstructionStepResponse].
  /// [description] Gets or sets the instruction step description.
  /// [innerSteps] Gets or sets the inner instruction steps details.
  /// [instructions] Gets or sets the instruction step details.
  /// [title] Gets or sets the instruction step title.
  InstructionStepResponse({
    this.description,
    this.innerSteps,
    this.instructions,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'innerSteps': ?pulumi.Input.mapOptionalInputValue<List<InstructionStepResponse>, List<Map<String, dynamic>>>(innerSteps, (value) => pulumi.Input.encodeList<InstructionStepResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instructions': ?pulumi.Input.mapOptionalInputValue<List<InstructionStepDetailsResponse>, List<Map<String, dynamic>>>(instructions, (value) => pulumi.Input.encodeList<InstructionStepDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'title': ?title,
    };
  }

  factory InstructionStepResponse.fromMap(Map<String, dynamic> map) {
    return InstructionStepResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      innerSteps: (() { final guardedValue = map['innerSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstructionStepResponse>(guardedValue, (value) => InstructionStepResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instructions: (() { final guardedValue = map['instructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstructionStepDetailsResponse>(guardedValue, (value) => InstructionStepDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

