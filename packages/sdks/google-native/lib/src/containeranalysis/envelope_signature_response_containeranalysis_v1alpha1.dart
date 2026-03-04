// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A DSSE signature
class EnvelopeSignatureResponseContaineranalysisV1alpha1 {
  /// A reference id to the key being used for signing
  final pulumi.Input<String> keyid;

  /// The signature itself
  final pulumi.Input<String> sig;

  /// Creates a new [EnvelopeSignatureResponseContaineranalysisV1alpha1].
  /// [keyid] A reference id to the key being used for signing
  /// [sig] The signature itself
  EnvelopeSignatureResponseContaineranalysisV1alpha1({
    required this.keyid,
    required this.sig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyid': keyid, 'sig': sig};
  }

  factory EnvelopeSignatureResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnvelopeSignatureResponseContaineranalysisV1alpha1(
      keyid: pulumi.Input.fromValue(map['keyid'] as String),
      sig: pulumi.Input.fromValue(map['sig'] as String),
    );
  }
}
