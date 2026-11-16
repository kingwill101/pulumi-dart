// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagFileFileStatus {
  /// (Output)
  /// Only populated when the state is ERROR.
  final pulumi.Input<String?>? errorStatus;
  /// (Output)
  /// RagFile state.
  final pulumi.Input<String?>? state;

  /// Creates a new [AiRagFileFileStatus].
  /// [errorStatus] (Output)
  /// [state] (Output)
  const AiRagFileFileStatus({
    this.errorStatus,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorStatus': ?errorStatus,
      'state': ?state,
    };
  }

  factory AiRagFileFileStatus.fromMap(Map<String, dynamic> map) {
    return AiRagFileFileStatus(
      errorStatus: (() { final guardedValue = map['errorStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
