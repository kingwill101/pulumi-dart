// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterBinaryAuthorization {
  /// Mode of operation for binauthz policy evaluation. If unspecified,
  /// defaults to DISABLED.
  /// Possible values are: `DISABLED`, `PROJECT_SINGLETON_POLICY_ENFORCE`.
  final pulumi.Input<String>? evaluationMode;

  /// Creates a new [BareMetalClusterBinaryAuthorization].
  /// [evaluationMode] Mode of operation for binauthz policy evaluation. If unspecified,
  BareMetalClusterBinaryAuthorization({
    this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': ?evaluationMode,
    };
  }

  factory BareMetalClusterBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterBinaryAuthorization(
      evaluationMode: map['evaluationMode'] == null ? null : (map['evaluationMode']! as String).input(),
    );
  }
}

