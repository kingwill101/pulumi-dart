// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_options.dart';
import 'key_usage.dart';
import 'name_constraints.dart';
import 'object_id.dart';
import 'x509_extension.dart';

/// An X509Parameters is used to describe certain fields of an X.509 certificate, such as the key usage fields, fields specific to CA certificates, certificate policy extensions and custom extensions.
class X509Parameters {
  /// Optional. Describes custom X.509 extensions.
  final pulumi.Input<List<X509Extension>>? additionalExtensions;
  /// Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  final pulumi.Input<List<String>>? aiaOcspServers;
  /// Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  final pulumi.Input<CaOptions>? caOptions;
  /// Optional. Indicates the intended use for keys that correspond to a certificate.
  final pulumi.Input<KeyUsage>? keyUsage;
  /// Optional. Describes the X.509 name constraints extension.
  final pulumi.Input<NameConstraints>? nameConstraints;
  /// Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  final pulumi.Input<List<ObjectId>>? policyIds;

  /// Creates a new [X509Parameters].
  /// [additionalExtensions] Optional. Describes custom X.509 extensions.
  /// [aiaOcspServers] Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  /// [caOptions] Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  /// [keyUsage] Optional. Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Optional. Describes the X.509 name constraints extension.
  /// [policyIds] Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  X509Parameters({
    this.additionalExtensions,
    this.aiaOcspServers,
    this.caOptions,
    this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?pulumi.Input.mapOptionalInputValue<List<X509Extension>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<X509Extension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aiaOcspServers': ?aiaOcspServers,
      'caOptions': ?pulumi.Input.mapOptionalInputValue<CaOptions, Map<String, dynamic>>(caOptions, (value) => value.toMap()),
      'keyUsage': ?pulumi.Input.mapOptionalInputValue<KeyUsage, Map<String, dynamic>>(keyUsage, (value) => value.toMap()),
      'nameConstraints': ?pulumi.Input.mapOptionalInputValue<NameConstraints, Map<String, dynamic>>(nameConstraints, (value) => value.toMap()),
      'policyIds': ?pulumi.Input.mapOptionalInputValue<List<ObjectId>, List<Map<String, dynamic>>>(policyIds, (value) => pulumi.Input.encodeList<ObjectId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory X509Parameters.fromMap(Map<String, dynamic> map) {
    return X509Parameters(
      additionalExtensions: map['additionalExtensions'] == null ? null : (pulumi.Input.decodeList<X509Extension>(map['additionalExtensions'], (value) => X509Extension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      aiaOcspServers: map['aiaOcspServers'] == null ? null : ((map['aiaOcspServers'] as List).cast<String>()).input(),
      caOptions: map['caOptions'] == null ? null : (CaOptions.fromMap((map['caOptions'] as Map).cast<String, dynamic>())).input(),
      keyUsage: map['keyUsage'] == null ? null : (KeyUsage.fromMap((map['keyUsage'] as Map).cast<String, dynamic>())).input(),
      nameConstraints: map['nameConstraints'] == null ? null : (NameConstraints.fromMap((map['nameConstraints'] as Map).cast<String, dynamic>())).input(),
      policyIds: map['policyIds'] == null ? null : (pulumi.Input.decodeList<ObjectId>(map['policyIds'], (value) => ObjectId.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

