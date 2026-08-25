// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecSourceCodeSpecImageSpec {
  /// Build arguments to be used. They will be passed through --build-arg flags.
  final pulumi.Input<Map<String, String>?>? buildArgs;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpecImageSpec].
  /// [buildArgs] Build arguments to be used. They will be passed through --build-arg flags.
  const AiReasoningEngineSpecSourceCodeSpecImageSpec({
    this.buildArgs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildArgs': ?buildArgs,
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpecImageSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpecImageSpec(
      buildArgs: (() { final guardedValue = map['buildArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
