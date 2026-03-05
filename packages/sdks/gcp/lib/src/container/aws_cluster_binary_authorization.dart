// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterBinaryAuthorization {
  /// Mode of operation for Binary Authorization policy evaluation. Possible values: DISABLED, PROJECT_SINGLETON_POLICY_ENFORCE
  final pulumi.Input<String>? evaluationMode;

  /// Creates a new [AwsClusterBinaryAuthorization].
  /// [evaluationMode] Mode of operation for Binary Authorization policy evaluation. Possible values: DISABLED, PROJECT_SINGLETON_POLICY_ENFORCE
  AwsClusterBinaryAuthorization({
    this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': ?evaluationMode,
    };
  }

  factory AwsClusterBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return AwsClusterBinaryAuthorization(
      evaluationMode: (() { final guardedValue = map['evaluationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

