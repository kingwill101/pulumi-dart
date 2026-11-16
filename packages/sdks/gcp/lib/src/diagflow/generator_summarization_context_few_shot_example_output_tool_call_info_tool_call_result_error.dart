// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResultError {
  /// The error message of the function.
  final pulumi.Input<String?>? message;
  /// Specifies whether the tool call is retryable.
  final pulumi.Input<bool?>? retryable;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResultError].
  /// [message] The error message of the function.
  /// [retryable] Specifies whether the tool call is retryable.
  const GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResultError({
    this.message,
    this.retryable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'retryable': ?retryable,
    };
  }

  factory GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResultError.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCallResultError(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryable: (() { final guardedValue = map['retryable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
