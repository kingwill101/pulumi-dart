// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_agent_coaching_context_instruction.dart';

class GeneratorAgentCoachingContext {
  /// Optional. Customized instructions for agent coaching.
  /// Structure is documented below.
  final pulumi.Input<List<GeneratorAgentCoachingContextInstruction>?>? instructions;
  /// Optional. Output language code.
  final pulumi.Input<String?>? outputLanguageCode;
  /// Optional. The overarching guidance for the agent coaching. This should be set only for v1.5 and later versions.
  final pulumi.Input<String?>? overarchingGuidance;
  /// Optional. Version of the feature. If not set, default to latest version. Current candidates are ["2.5"].
  final pulumi.Input<String?>? version;

  /// Creates a new [GeneratorAgentCoachingContext].
  /// [instructions] Optional. Customized instructions for agent coaching.
  /// [outputLanguageCode] Optional. Output language code.
  /// [overarchingGuidance] Optional. The overarching guidance for the agent coaching. This should be set only for v1.5 and later versions.
  /// [version] Optional. Version of the feature. If not set, default to latest version. Current candidates are ["2.5"].
  const GeneratorAgentCoachingContext({
    this.instructions,
    this.outputLanguageCode,
    this.overarchingGuidance,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instructions': ?pulumi.Input.mapOptionalInputValue<List<GeneratorAgentCoachingContextInstruction>, List<Map<String, dynamic>>>(instructions, (value) => pulumi.Input.encodeList<GeneratorAgentCoachingContextInstruction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outputLanguageCode': ?outputLanguageCode,
      'overarchingGuidance': ?overarchingGuidance,
      'version': ?version,
    };
  }

  factory GeneratorAgentCoachingContext.fromMap(Map<String, dynamic> map) {
    return GeneratorAgentCoachingContext(
      instructions: (() { final guardedValue = map['instructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GeneratorAgentCoachingContextInstruction>(guardedValue, (value) => GeneratorAgentCoachingContextInstruction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outputLanguageCode: (() { final guardedValue = map['outputLanguageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overarchingGuidance: (() { final guardedValue = map['overarchingGuidance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
