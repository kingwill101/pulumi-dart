// ignore_for_file: unused_element, unnecessary_cast


class EnvelopeSignatureContaineranalysisV1beta1 {
  final String? keyid;
  final String? sig;

  /// Creates a new [EnvelopeSignatureContaineranalysisV1beta1].
  /// [keyid] Optional.
  /// [sig] Optional.
  EnvelopeSignatureContaineranalysisV1beta1({
    this.keyid,
    this.sig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyid': ?keyid,
      'sig': ?sig,
    };
  }

  factory EnvelopeSignatureContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignatureContaineranalysisV1beta1(
      keyid: map['keyid'] == null ? null : map['keyid'] as String,
      sig: map['sig'] == null ? null : map['sig'] as String,
    );
  }
}

