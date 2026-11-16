// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagCorpusCorpusStatus {
  /// (Output)
  /// Output only. Only populated when the state is ERROR.
  final pulumi.Input<String?>? errorStatus;
  /// (Output)
  /// Output only. RagCorpus life state.
  final pulumi.Input<String?>? state;

  /// Creates a new [AiRagCorpusCorpusStatus].
  /// [errorStatus] (Output)
  /// [state] (Output)
  const AiRagCorpusCorpusStatus({
    this.errorStatus,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorStatus': ?errorStatus,
      'state': ?state,
    };
  }

  factory AiRagCorpusCorpusStatus.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusCorpusStatus(
      errorStatus: (() { final guardedValue = map['errorStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
