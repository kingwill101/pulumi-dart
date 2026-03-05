// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_id_response.dart';

/// Describes a set of X.509 extensions that may be part of some certificate issuance controls.
class CertificateExtensionConstraintsResponse {
  /// Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.
  final pulumi.Input<List<ObjectIdResponse>> additionalExtensions;
  /// Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.
  final pulumi.Input<List<String>> knownExtensions;

  /// Creates a new [CertificateExtensionConstraintsResponse].
  /// [additionalExtensions] Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.
  /// [knownExtensions] Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.
  CertificateExtensionConstraintsResponse({
    required this.additionalExtensions,
    required this.knownExtensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': pulumi.Input.mapInputValue<List<ObjectIdResponse>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<ObjectIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'knownExtensions': knownExtensions,
    };
  }

  factory CertificateExtensionConstraintsResponse.fromMap(Map<String, dynamic> map) {
    return CertificateExtensionConstraintsResponse(
      additionalExtensions: pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectIdResponse>(map['additionalExtensions']!, (value) => ObjectIdResponse.fromMap((value as Map).cast<String, dynamic>()))),
      knownExtensions: pulumi.Input.fromValue((map['knownExtensions'] as List).cast<String>()),
    );
  }
}

