// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Artifact describes a build product.
class Artifact {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
  final pulumi.Input<String>? checksum;
  /// Artifact ID, if any; for container images, this will be a URL by digest like `gcr.io/projectID/imagename@sha256:123456`.
  final pulumi.Input<String>? id;
  /// Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
  final pulumi.Input<List<String>>? names;

  /// Creates a new [Artifact].
  /// [checksum] Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
  /// [id] Artifact ID, if any; for container images, this will be a URL by digest like `gcr.io/projectID/imagename@sha256:123456`.
  /// [names] Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
  Artifact({
    this.checksum,
    this.id,
    this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': ?checksum,
      'id': ?id,
      'names': ?names,
    };
  }

  factory Artifact.fromMap(Map<String, dynamic> map) {
    return Artifact(
      checksum: map['checksum'] == null ? null : (map['checksum']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      names: map['names'] == null ? null : ((map['names']! as List).cast<String>()).input(),
    );
  }
}

