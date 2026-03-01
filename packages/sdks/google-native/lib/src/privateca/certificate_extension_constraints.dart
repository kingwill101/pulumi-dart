// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_extension_constraints_known_extensions_item.dart';
import 'object_id.dart';

/// Describes a set of X.509 extensions that may be part of some certificate issuance controls.
class CertificateExtensionConstraints {
  /// Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.
  final List<ObjectId>? additionalExtensions;
  /// Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.
  final List<CertificateExtensionConstraintsKnownExtensionsItem>? knownExtensions;

  /// Creates a new [CertificateExtensionConstraints].
  /// [additionalExtensions] Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.
  /// [knownExtensions] Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.
  CertificateExtensionConstraints({
    this.additionalExtensions,
    this.knownExtensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?additionalExtensions == null ? null : pulumi.Input.encodeList<ObjectId, Map<String, dynamic>>(additionalExtensions!, (value) => value.toMap()),
      'knownExtensions': ?knownExtensions == null ? null : pulumi.Input.encodeList<CertificateExtensionConstraintsKnownExtensionsItem, String>(knownExtensions!, (value) => value.value),
    };
  }

  factory CertificateExtensionConstraints.fromMap(Map<String, dynamic> map) {
    return CertificateExtensionConstraints(
      additionalExtensions: map['additionalExtensions'] == null ? null : pulumi.Input.decodeList<ObjectId>(map['additionalExtensions'], (value) => ObjectId.fromMap((value as Map).cast<String, dynamic>())),
      knownExtensions: map['knownExtensions'] == null ? null : pulumi.Input.decodeList<CertificateExtensionConstraintsKnownExtensionsItem>(map['knownExtensions'], (value) => CertificateExtensionConstraintsKnownExtensionsItem.fromValue(value as String)),
    );
  }
}

