// ignore_for_file: unused_element, unnecessary_cast


/// Digest information.
class DigestResponseContaineranalysisV1alpha1 {
  /// `SHA1`, `SHA512` etc.
  final String algo;
  /// Value of the digest.
  final String digestBytes;

  /// Creates a new [DigestResponseContaineranalysisV1alpha1].
  /// [algo] `SHA1`, `SHA512` etc.
  /// [digestBytes] Value of the digest.
  DigestResponseContaineranalysisV1alpha1({
    required this.algo,
    required this.digestBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algo': algo,
      'digestBytes': digestBytes,
    };
  }

  factory DigestResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return DigestResponseContaineranalysisV1alpha1(
      algo: map['algo'] as String,
      digestBytes: map['digestBytes'] as String,
    );
  }
}

