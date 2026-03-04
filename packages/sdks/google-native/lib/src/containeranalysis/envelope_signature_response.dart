// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvelopeSignatureResponse {
  final pulumi.Input<String> keyid;
  final pulumi.Input<String> sig;

  /// Creates a new [EnvelopeSignatureResponse].
  /// [keyid] Required.
  /// [sig] Required.
  EnvelopeSignatureResponse({required this.keyid, required this.sig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyid': keyid, 'sig': sig};
  }

  factory EnvelopeSignatureResponse.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignatureResponse(
      keyid: pulumi.Input.fromValue(map['keyid'] as String),
      sig: pulumi.Input.fromValue(map['sig'] as String),
    );
  }
}
