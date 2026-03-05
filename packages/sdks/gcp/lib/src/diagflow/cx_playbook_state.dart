// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_playbook_instruction.dart';
import 'cx_playbook_llm_model_settings.dart';

/// Input properties used for looking up and filtering CxPlaybook resources.
class CxPlaybookState {
  /// The timestamp of initial playbook creation.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? createTime;
  /// The human-readable name of the playbook, unique within an agent.
  final pulumi.Input<String>? displayName;
  /// High level description of the goal the playbook intend to accomplish. A goal should be concise since it's visible to other playbooks that may reference this playbook.
  final pulumi.Input<String>? goal;
  /// Instruction to accomplish target goal.
  /// Structure is documented below.
  final pulumi.Input<CxPlaybookInstruction>? instruction;
  /// Llm model settings for the playbook.
  /// Structure is documented below.
  final pulumi.Input<CxPlaybookLlmModelSettings>? llmModelSettings;
  /// The unique identifier of the Playbook.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/playbooks/&lt;Playbook ID&gt;.
  final pulumi.Input<String>? name;
  /// The agent to create a Playbook for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  final pulumi.Input<String>? parent;
  /// Type of the playbook.
  /// Possible values are: `PLAYBOOK_TYPE_UNSPECIFIED`, `TASK`, `ROUTINE`.
  final pulumi.Input<String>? playbookType;
  /// The resource name of flows referenced by the current playbook in the instructions.
  final pulumi.Input<List<String>>? referencedFlows;
  /// The resource name of other playbooks referenced by the current playbook in the instructions.
  final pulumi.Input<List<String>>? referencedPlaybooks;
  /// The resource name of tools referenced by the current playbook in the instructions. If not provided explicitly, they are will be implied using the tool being referenced in goal and steps.
  final pulumi.Input<List<String>>? referencedTools;
  /// Estimated number of tokes current playbook takes when sent to the LLM.
  final pulumi.Input<String>? tokenCount;
  /// Last time the playbook version was updated.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CxPlaybookState].
  /// [createTime] The timestamp of initial playbook creation.
  /// [displayName] The human-readable name of the playbook, unique within an agent.
  /// [goal] High level description of the goal the playbook intend to accomplish. A goal should be concise since it's visible to other playbooks that may reference this playbook.
  /// [instruction] Instruction to accomplish target goal.
  /// [llmModelSettings] Llm model settings for the playbook.
  /// [name] The unique identifier of the Playbook.
  /// [parent] The agent to create a Playbook for.
  /// [playbookType] Type of the playbook.
  /// [referencedFlows] The resource name of flows referenced by the current playbook in the instructions.
  /// [referencedPlaybooks] The resource name of other playbooks referenced by the current playbook in the instructions.
  /// [referencedTools] The resource name of tools referenced by the current playbook in the instructions. If not provided explicitly, they are will be implied using the tool being referenced in goal and steps.
  /// [tokenCount] Estimated number of tokes current playbook takes when sent to the LLM.
  /// [updateTime] Last time the playbook version was updated.
  CxPlaybookState({
    this.createTime,
    this.displayName,
    this.goal,
    this.instruction,
    this.llmModelSettings,
    this.name,
    this.parent,
    this.playbookType,
    this.referencedFlows,
    this.referencedPlaybooks,
    this.referencedTools,
    this.tokenCount,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'goal': ?goal,
      'instruction': ?pulumi.Input.mapOptionalInputValue<CxPlaybookInstruction, Map<String, dynamic>>(instruction, (value) => value.toMap()),
      'llmModelSettings': ?pulumi.Input.mapOptionalInputValue<CxPlaybookLlmModelSettings, Map<String, dynamic>>(llmModelSettings, (value) => value.toMap()),
      'name': ?name,
      'parent': ?parent,
      'playbookType': ?playbookType,
      'referencedFlows': ?referencedFlows,
      'referencedPlaybooks': ?referencedPlaybooks,
      'referencedTools': ?referencedTools,
      'tokenCount': ?tokenCount,
      'updateTime': ?updateTime,
    };
  }

  factory CxPlaybookState.fromMap(Map<String, dynamic> map) {
    return CxPlaybookState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      goal: (() { final guardedValue = map['goal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instruction: (() { final guardedValue = map['instruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPlaybookInstruction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      llmModelSettings: (() { final guardedValue = map['llmModelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPlaybookLlmModelSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      playbookType: (() { final guardedValue = map['playbookType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referencedFlows: (() { final guardedValue = map['referencedFlows']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      referencedPlaybooks: (() { final guardedValue = map['referencedPlaybooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      referencedTools: (() { final guardedValue = map['referencedTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tokenCount: (() { final guardedValue = map['tokenCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

