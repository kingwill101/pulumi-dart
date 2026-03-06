// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a hash object for use in Materials and Products.
class ArtifactHashes {
  final pulumi.Input<String>? sha256;

  /// Creates a new [ArtifactHashes].
  /// [sha256] Optional.
  const ArtifactHashes({
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256': ?sha256,
    };
  }

  factory ArtifactHashes.fromMap(Map<String, dynamic> map) {
    return ArtifactHashes(
      sha256: (() { final guardedValue = map['sha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

