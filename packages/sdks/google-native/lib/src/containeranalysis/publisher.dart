// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Publisher contains information about the publisher of this Note.
class Publisher {
  /// Provides information about the authority of the issuing party to release the document, in particular, the party's constituency and responsibilities or other obligations.
  final pulumi.Input<String>? issuingAuthority;
  /// Name of the publisher. Examples: 'Google', 'Google Cloud Platform'.
  final pulumi.Input<String>? name;
  /// The context or namespace. Contains a URL which is under control of the issuing party and can be used as a globally unique identifier for that issuing party. Example: https://csaf.io
  final pulumi.Input<String>? publisherNamespace;

  /// Creates a new [Publisher].
  /// [issuingAuthority] Provides information about the authority of the issuing party to release the document, in particular, the party's constituency and responsibilities or other obligations.
  /// [name] Name of the publisher. Examples: 'Google', 'Google Cloud Platform'.
  /// [publisherNamespace] The context or namespace. Contains a URL which is under control of the issuing party and can be used as a globally unique identifier for that issuing party. Example: https://csaf.io
  const Publisher({
    this.issuingAuthority,
    this.name,
    this.publisherNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuingAuthority': ?issuingAuthority,
      'name': ?name,
      'publisherNamespace': ?publisherNamespace,
    };
  }

  factory Publisher.fromMap(Map<String, dynamic> map) {
    return Publisher(
      issuingAuthority: (() { final guardedValue = map['issuingAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherNamespace: (() { final guardedValue = map['publisherNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
