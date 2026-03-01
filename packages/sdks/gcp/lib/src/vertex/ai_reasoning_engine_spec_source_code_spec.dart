// ignore_for_file: unused_element, unnecessary_cast

import 'ai_reasoning_engine_spec_source_code_spec_inline_source.dart';
import 'ai_reasoning_engine_spec_source_code_spec_python_spec.dart';

class AiReasoningEngineSpecSourceCodeSpec {
  /// Source code is provided directly in the request.
  /// Structure is documented below.
  final AiReasoningEngineSpecSourceCodeSpecInlineSource? inlineSource;
  /// Specification for running a Python application from source.
  /// Structure is documented below.
  final AiReasoningEngineSpecSourceCodeSpecPythonSpec? pythonSpec;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpec].
  /// [inlineSource] Source code is provided directly in the request.
  /// [pythonSpec] Specification for running a Python application from source.
  AiReasoningEngineSpecSourceCodeSpec({
    this.inlineSource,
    this.pythonSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlineSource': ?inlineSource == null ? null : inlineSource!.toMap(),
      'pythonSpec': ?pythonSpec == null ? null : pythonSpec!.toMap(),
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpec(
      inlineSource: map['inlineSource'] == null ? null : AiReasoningEngineSpecSourceCodeSpecInlineSource.fromMap((map['inlineSource'] as Map).cast<String, dynamic>()),
      pythonSpec: map['pythonSpec'] == null ? null : AiReasoningEngineSpecSourceCodeSpecPythonSpec.fromMap((map['pythonSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

