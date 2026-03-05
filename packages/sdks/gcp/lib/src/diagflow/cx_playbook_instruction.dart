// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_playbook_instruction_step.dart';

class CxPlaybookInstruction {
  /// General guidelines for the playbook. These are unstructured instructions that are not directly part of the goal, e.g. "Always be polite". It's valid for this text to be long and used instead of steps altogether.
  final pulumi.Input<String>? guidelines;
  /// Ordered list of step by step execution instructions to accomplish target goal.
  /// Structure is documented below.
  final pulumi.Input<List<CxPlaybookInstructionStep>>? steps;

  /// Creates a new [CxPlaybookInstruction].
  /// [guidelines] General guidelines for the playbook. These are unstructured instructions that are not directly part of the goal, e.g. "Always be polite". It's valid for this text to be long and used instead of steps altogether.
  /// [steps] Ordered list of step by step execution instructions to accomplish target goal.
  CxPlaybookInstruction({
    this.guidelines,
    this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guidelines': ?guidelines,
      'steps': ?pulumi.Input.mapOptionalInputValue<List<CxPlaybookInstructionStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<CxPlaybookInstructionStep, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CxPlaybookInstruction.fromMap(Map<String, dynamic> map) {
    return CxPlaybookInstruction(
      guidelines: (() { final guardedValue = map['guidelines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      steps: (() { final guardedValue = map['steps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxPlaybookInstructionStep>(guardedValue, (value) => CxPlaybookInstructionStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

