// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_source_code_spec_inline_source.dart';
import 'ai_reasoning_engine_spec_source_code_spec_python_spec.dart';

class AiReasoningEngineSpecSourceCodeSpec {
  /// Source code is provided directly in the request.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpecInlineSource>?
  inlineSource;

  /// Specification for running a Python application from source.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpecPythonSpec>? pythonSpec;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpec].
  /// [inlineSource] Source code is provided directly in the request.
  /// [pythonSpec] Specification for running a Python application from source.
  AiReasoningEngineSpecSourceCodeSpec({this.inlineSource, this.pythonSpec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlineSource':
          ?pulumi.Input.mapOptionalInputValue<
            AiReasoningEngineSpecSourceCodeSpecInlineSource,
            Map<String, dynamic>
          >(inlineSource, (value) => value.toMap()),
      'pythonSpec':
          ?pulumi.Input.mapOptionalInputValue<
            AiReasoningEngineSpecSourceCodeSpecPythonSpec,
            Map<String, dynamic>
          >(pythonSpec, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiReasoningEngineSpecSourceCodeSpec(
      inlineSource: (() {
        final guardedValue = map['inlineSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiReasoningEngineSpecSourceCodeSpecInlineSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      pythonSpec: (() {
        final guardedValue = map['pythonSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiReasoningEngineSpecSourceCodeSpecPythonSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
