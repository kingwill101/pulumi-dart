// ignore_for_file: unused_element, unnecessary_cast


class AwsClusterBinaryAuthorization {
  /// Mode of operation for Binary Authorization policy evaluation. Possible values: DISABLED, PROJECT_SINGLETON_POLICY_ENFORCE
  final String? evaluationMode;

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
      evaluationMode: map['evaluationMode'] == null ? null : map['evaluationMode'] as String,
    );
  }
}

