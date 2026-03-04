// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPlaybookInstructionStep {
  /// Sub-processing needed to execute the current step.
  /// This field uses JSON data as a string. The value provided must be a valid JSON representation documented in [Step](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.playbooks#step).
  final pulumi.Input<String>? steps;

  /// Step instruction in text format.
  final pulumi.Input<String>? text;

  /// Creates a new [CxPlaybookInstructionStep].
  /// [steps] Sub-processing needed to execute the current step.
  /// [text] Step instruction in text format.
  CxPlaybookInstructionStep({this.steps, this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'steps': ?steps, 'text': ?text};
  }

  factory CxPlaybookInstructionStep.fromMap(Map<String, dynamic> map) {
    return CxPlaybookInstructionStep(
      steps: (() {
        final guardedValue = map['steps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      text: (() {
        final guardedValue = map['text'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
