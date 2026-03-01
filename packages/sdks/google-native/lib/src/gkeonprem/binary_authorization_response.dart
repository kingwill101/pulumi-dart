// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for Binary Authorization.
class BinaryAuthorizationResponse {
  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final String evaluationMode;

  /// Creates a new [BinaryAuthorizationResponse].
  /// [evaluationMode] Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  BinaryAuthorizationResponse({
    required this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': evaluationMode,
    };
  }

  factory BinaryAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationResponse(
      evaluationMode: map['evaluationMode'] as String,
    );
  }
}

