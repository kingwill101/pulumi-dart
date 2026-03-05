// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AttachedClusterBinaryAuthorization {
  /// Configure Binary Authorization evaluation mode.
  /// Possible values are: `DISABLED`, `PROJECT_SINGLETON_POLICY_ENFORCE`.
  final pulumi.Input<String>? evaluationMode;

  /// Creates a new [AttachedClusterBinaryAuthorization].
  /// [evaluationMode] Configure Binary Authorization evaluation mode.
  AttachedClusterBinaryAuthorization({
    this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': ?evaluationMode,
    };
  }

  factory AttachedClusterBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return AttachedClusterBinaryAuthorization(
      evaluationMode: (() { final guardedValue = map['evaluationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

