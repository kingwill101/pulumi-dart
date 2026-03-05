// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Publisher contains information about the publisher of this Note.
class PublisherResponseContaineranalysisV1alpha1 {
  /// Provides information about the authority of the issuing party to release the document, in particular, the party's constituency and responsibilities or other obligations.
  final pulumi.Input<String> issuingAuthority;
  /// Name of the publisher. Examples: 'Google', 'Google Cloud Platform'.
  final pulumi.Input<String> name;
  /// The context or namespace. Contains a URL which is under control of the issuing party and can be used as a globally unique identifier for that issuing party. Example: https://csaf.io
  final pulumi.Input<String> publisherNamespace;

  /// Creates a new [PublisherResponseContaineranalysisV1alpha1].
  /// [issuingAuthority] Provides information about the authority of the issuing party to release the document, in particular, the party's constituency and responsibilities or other obligations.
  /// [name] Name of the publisher. Examples: 'Google', 'Google Cloud Platform'.
  /// [publisherNamespace] The context or namespace. Contains a URL which is under control of the issuing party and can be used as a globally unique identifier for that issuing party. Example: https://csaf.io
  PublisherResponseContaineranalysisV1alpha1({
    required this.issuingAuthority,
    required this.name,
    required this.publisherNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuingAuthority': issuingAuthority,
      'name': name,
      'publisherNamespace': publisherNamespace,
    };
  }

  factory PublisherResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return PublisherResponseContaineranalysisV1alpha1(
      issuingAuthority: pulumi.Input.fromValue(map['issuingAuthority'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      publisherNamespace: pulumi.Input.fromValue(map['publisherNamespace'] as String),
    );
  }
}

