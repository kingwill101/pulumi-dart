// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FhirServiceOciArtifact {
  /// A digest of an image within Azure container registry used for export operations of the service instance to narrow the artifacts down.
  final pulumi.Input<String>? digest;
  /// An image within Azure container registry used for export operations of the service instance.
  final pulumi.Input<String>? imageName;
  /// An Azure container registry used for export operations of the service instance.
  final pulumi.Input<String> loginServer;

  /// Creates a new [FhirServiceOciArtifact].
  /// [digest] A digest of an image within Azure container registry used for export operations of the service instance to narrow the artifacts down.
  /// [imageName] An image within Azure container registry used for export operations of the service instance.
  /// [loginServer] An Azure container registry used for export operations of the service instance.
  FhirServiceOciArtifact({
    this.digest,
    this.imageName,
    required this.loginServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'imageName': ?imageName,
      'loginServer': loginServer,
    };
  }

  factory FhirServiceOciArtifact.fromMap(Map<String, dynamic> map) {
    return FhirServiceOciArtifact(
      digest: map['digest'] == null ? null : (map['digest']! as String).input(),
      imageName: map['imageName'] == null ? null : (map['imageName']! as String).input(),
      loginServer: (map['loginServer'] as String).input(),
    );
  }
}

