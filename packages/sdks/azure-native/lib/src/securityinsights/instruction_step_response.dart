// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instruction_step_details_response.dart';

/// Instruction steps to enable the connector.
class InstructionStepResponse {
  /// Gets or sets the instruction step description.
  final String? description;
  /// Gets or sets the inner instruction steps details.
  /// For Example: instruction step 1 might contain inner instruction steps: [instruction step 1.1, instruction step 1.2].
  final List<InstructionStepResponse>? innerSteps;
  /// Gets or sets the instruction step details.
  final List<InstructionStepDetailsResponse>? instructions;
  /// Gets or sets the instruction step title.
  final String? title;

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
      'innerSteps': ?innerSteps == null ? null : pulumi.Input.encodeList<InstructionStepResponse, Map<String, dynamic>>(innerSteps!, (value) => value.toMap()),
      'instructions': ?instructions == null ? null : pulumi.Input.encodeList<InstructionStepDetailsResponse, Map<String, dynamic>>(instructions!, (value) => value.toMap()),
      'title': ?title,
    };
  }

  factory InstructionStepResponse.fromMap(Map<String, dynamic> map) {
    return InstructionStepResponse(
      description: map['description'] == null ? null : map['description'] as String,
      innerSteps: map['innerSteps'] == null ? null : pulumi.Input.decodeList<InstructionStepResponse>(map['innerSteps'], (value) => InstructionStepResponse.fromMap((value as Map).cast<String, dynamic>())),
      instructions: map['instructions'] == null ? null : pulumi.Input.decodeList<InstructionStepDetailsResponse>(map['instructions'], (value) => InstructionStepDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

