// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyRingImportJobAttestation {
  /// (Output)
  /// The attestation data provided by the HSM when the key operation was performed.
  /// A base64-encoded string.
  final pulumi.Input<String>? content;
  /// (Output)
  /// The format of the attestation data.
  final pulumi.Input<String>? format;

  /// Creates a new [KeyRingImportJobAttestation].
  /// [content] (Output)
  /// [format] (Output)
  KeyRingImportJobAttestation({
    this.content,
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'format': ?format,
    };
  }

  factory KeyRingImportJobAttestation.fromMap(Map<String, dynamic> map) {
    return KeyRingImportJobAttestation(
      content: map['content'] == null ? null : (map['content']! as String).input(),
      format: map['format'] == null ? null : (map['format']! as String).input(),
    );
  }
}

