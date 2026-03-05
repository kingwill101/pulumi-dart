// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A signature object consists of the KeyID used and the signature itself.
class GrafeasV1beta1IntotoSignatureResponse {
  final pulumi.Input<String> keyid;
  final pulumi.Input<String> sig;

  /// Creates a new [GrafeasV1beta1IntotoSignatureResponse].
  /// [keyid] Required.
  /// [sig] Required.
  GrafeasV1beta1IntotoSignatureResponse({
    required this.keyid,
    required this.sig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyid': keyid,
      'sig': sig,
    };
  }

  factory GrafeasV1beta1IntotoSignatureResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1IntotoSignatureResponse(
      keyid: pulumi.Input.fromValue(map['keyid'] as String),
      sig: pulumi.Input.fromValue(map['sig'] as String),
    );
  }
}

