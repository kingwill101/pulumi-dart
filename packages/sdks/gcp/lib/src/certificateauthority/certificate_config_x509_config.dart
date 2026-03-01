// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_config_x509_config_additional_extension.dart';
import 'certificate_config_x509_config_ca_options.dart';
import 'certificate_config_x509_config_key_usage.dart';
import 'certificate_config_x509_config_name_constraints.dart';
import 'certificate_config_x509_config_policy_id.dart';

class CertificateConfigX509Config {
  /// (Output)
  /// Describes custom X.509 extensions.
  /// Structure is documented below.
  final List<CertificateConfigX509ConfigAdditionalExtension>? additionalExtensions;
  /// (Output)
  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// "Authority Information Access" extension in the certificate.
  final List<String>? aiaOcspServers;
  /// (Output)
  /// Describes values that are relevant in a CA certificate.
  /// Structure is documented below.
  final CertificateConfigX509ConfigCaOptions? caOptions;
  /// (Output)
  /// Indicates the intended use for keys that correspond to a certificate.
  /// Structure is documented below.
  final CertificateConfigX509ConfigKeyUsage keyUsage;
  /// (Output)
  /// Describes the X.509 name constraints extension.
  /// Structure is documented below.
  final CertificateConfigX509ConfigNameConstraints? nameConstraints;
  /// (Output)
  /// Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  /// Structure is documented below.
  final List<CertificateConfigX509ConfigPolicyId>? policyIds;

  /// Creates a new [CertificateConfigX509Config].
  /// [additionalExtensions] (Output)
  /// [aiaOcspServers] (Output)
  /// [caOptions] (Output)
  /// [keyUsage] (Output)
  /// [nameConstraints] (Output)
  /// [policyIds] (Output)
  CertificateConfigX509Config({
    this.additionalExtensions,
    this.aiaOcspServers,
    this.caOptions,
    required this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?additionalExtensions == null ? null : pulumi.Input.encodeList<CertificateConfigX509ConfigAdditionalExtension, Map<String, dynamic>>(additionalExtensions!, (value) => value.toMap()),
      'aiaOcspServers': ?aiaOcspServers,
      'caOptions': ?caOptions == null ? null : caOptions!.toMap(),
      'keyUsage': keyUsage.toMap(),
      'nameConstraints': ?nameConstraints == null ? null : nameConstraints!.toMap(),
      'policyIds': ?policyIds == null ? null : pulumi.Input.encodeList<CertificateConfigX509ConfigPolicyId, Map<String, dynamic>>(policyIds!, (value) => value.toMap()),
    };
  }

  factory CertificateConfigX509Config.fromMap(Map<String, dynamic> map) {
    return CertificateConfigX509Config(
      additionalExtensions: map['additionalExtensions'] == null ? null : pulumi.Input.decodeList<CertificateConfigX509ConfigAdditionalExtension>(map['additionalExtensions'], (value) => CertificateConfigX509ConfigAdditionalExtension.fromMap((value as Map).cast<String, dynamic>())),
      aiaOcspServers: map['aiaOcspServers'] == null ? null : (map['aiaOcspServers'] as List).cast<String>(),
      caOptions: map['caOptions'] == null ? null : CertificateConfigX509ConfigCaOptions.fromMap((map['caOptions'] as Map).cast<String, dynamic>()),
      keyUsage: CertificateConfigX509ConfigKeyUsage.fromMap((map['keyUsage'] as Map).cast<String, dynamic>()),
      nameConstraints: map['nameConstraints'] == null ? null : CertificateConfigX509ConfigNameConstraints.fromMap((map['nameConstraints'] as Map).cast<String, dynamic>()),
      policyIds: map['policyIds'] == null ? null : pulumi.Input.decodeList<CertificateConfigX509ConfigPolicyId>(map['policyIds'], (value) => CertificateConfigX509ConfigPolicyId.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

