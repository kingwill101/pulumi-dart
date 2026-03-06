// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvelopeSignatureResponseContaineranalysisV1beta1 {
  final pulumi.Input<String> keyid;
  final pulumi.Input<String> sig;

  /// Creates a new [EnvelopeSignatureResponseContaineranalysisV1beta1].
  /// [keyid] Required.
  /// [sig] Required.
  const EnvelopeSignatureResponseContaineranalysisV1beta1({
    required this.keyid,
    required this.sig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyid': keyid,
      'sig': sig,
    };
  }

  factory EnvelopeSignatureResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignatureResponseContaineranalysisV1beta1(
      keyid: pulumi.Input.fromValue(map['keyid'] as String),
      sig: pulumi.Input.fromValue(map['sig'] as String),
    );
  }
}

