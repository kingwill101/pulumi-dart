// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_playbook_instruction.dart';
import 'cx_playbook_llm_model_settings.dart';

/// {@template pulumi_diagflow_cx_playbook_cx_playbook_args_doc}
/// The set of arguments for CxPlaybook.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_playbook_cx_playbook_args_doc}
class CxPlaybookArgs {
  /// The human-readable name of the playbook, unique within an agent.
  final pulumi.Input<String> displayName;
  /// High level description of the goal the playbook intend to accomplish. A goal should be concise since it's visible to other playbooks that may reference this playbook.
  final pulumi.Input<String> goal;
  /// Instruction to accomplish target goal.
  /// Structure is documented below.
  final pulumi.Input<CxPlaybookInstruction>? instruction;
  /// Llm model settings for the playbook.
  /// Structure is documented below.
  final pulumi.Input<CxPlaybookLlmModelSettings>? llmModelSettings;
  /// The agent to create a Playbook for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  final pulumi.Input<String>? parent;
  /// Type of the playbook.
  /// Possible values are: `PLAYBOOK_TYPE_UNSPECIFIED`, `TASK`, `ROUTINE`.
  final pulumi.Input<String>? playbookType;
  /// The resource name of tools referenced by the current playbook in the instructions. If not provided explicitly, they are will be implied using the tool being referenced in goal and steps.
  final pulumi.Input<List<String>>? referencedTools;

  /// Creates a new [CxPlaybookArgs].
  /// [displayName] The human-readable name of the playbook, unique within an agent.
  /// [goal] High level description of the goal the playbook intend to accomplish. A goal should be concise since it's visible to other playbooks that may reference this playbook.
  /// [instruction] Instruction to accomplish target goal.
  /// [llmModelSettings] Llm model settings for the playbook.
  /// [parent] The agent to create a Playbook for.
  /// [playbookType] Type of the playbook.
  /// [referencedTools] The resource name of tools referenced by the current playbook in the instructions. If not provided explicitly, they are will be implied using the tool being referenced in goal and steps.
  const CxPlaybookArgs({
    required this.displayName,
    required this.goal,
    this.instruction,
    this.llmModelSettings,
    this.parent,
    this.playbookType,
    this.referencedTools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'goal': goal,
      'instruction': ?pulumi.Input.mapOptionalInputValue<CxPlaybookInstruction, Map<String, dynamic>>(instruction, (value) => value.toMap()),
      'llmModelSettings': ?pulumi.Input.mapOptionalInputValue<CxPlaybookLlmModelSettings, Map<String, dynamic>>(llmModelSettings, (value) => value.toMap()),
      'parent': ?parent,
      'playbookType': ?playbookType,
      'referencedTools': ?referencedTools,
    };
  }

  factory CxPlaybookArgs.fromMap(Map<String, dynamic> map) {
    return CxPlaybookArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      goal: pulumi.Input.fromValue(map['goal'] as String),
      instruction: (() { final guardedValue = map['instruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPlaybookInstruction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      llmModelSettings: (() { final guardedValue = map['llmModelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPlaybookLlmModelSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      playbookType: (() { final guardedValue = map['playbookType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referencedTools: (() { final guardedValue = map['referencedTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

