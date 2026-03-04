// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fingerprint.dart';

/// Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g., a tag of the resource_url.
class ImageNote {
  /// Immutable. The fingerprint of the base image.
  final pulumi.Input<Fingerprint> fingerprint;

  /// Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  final pulumi.Input<String> resourceUrl;

  /// Creates a new [ImageNote].
  /// [fingerprint] Immutable. The fingerprint of the base image.
  /// [resourceUrl] Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  ImageNote({required this.fingerprint, required this.resourceUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint':
          pulumi.Input.mapInputValue<Fingerprint, Map<String, dynamic>>(
            fingerprint,
            (value) => value.toMap(),
          ),
      'resourceUrl': resourceUrl,
    };
  }

  factory ImageNote.fromMap(Map<String, dynamic> map) {
    return ImageNote(
      fingerprint: pulumi.Input.fromValue(
        Fingerprint.fromMap(
          (map['fingerprint']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceUrl: pulumi.Input.fromValue(map['resourceUrl'] as String),
    );
  }
}
