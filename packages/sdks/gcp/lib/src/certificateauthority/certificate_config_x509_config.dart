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
  final pulumi.Input<List<CertificateConfigX509ConfigAdditionalExtension>>? additionalExtensions;
  /// (Output)
  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// "Authority Information Access" extension in the certificate.
  final pulumi.Input<List<String>>? aiaOcspServers;
  /// (Output)
  /// Describes values that are relevant in a CA certificate.
  /// Structure is documented below.
  final pulumi.Input<CertificateConfigX509ConfigCaOptions>? caOptions;
  /// (Output)
  /// Indicates the intended use for keys that correspond to a certificate.
  /// Structure is documented below.
  final pulumi.Input<CertificateConfigX509ConfigKeyUsage> keyUsage;
  /// (Output)
  /// Describes the X.509 name constraints extension.
  /// Structure is documented below.
  final pulumi.Input<CertificateConfigX509ConfigNameConstraints>? nameConstraints;
  /// (Output)
  /// Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateConfigX509ConfigPolicyId>>? policyIds;

  /// Creates a new [CertificateConfigX509Config].
  /// [additionalExtensions] (Output)
  /// [aiaOcspServers] (Output)
  /// [caOptions] (Output)
  /// [keyUsage] (Output)
  /// [nameConstraints] (Output)
  /// [policyIds] (Output)
  const CertificateConfigX509Config({
    this.additionalExtensions,
    this.aiaOcspServers,
    this.caOptions,
    required this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?pulumi.Input.mapOptionalInputValue<List<CertificateConfigX509ConfigAdditionalExtension>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<CertificateConfigX509ConfigAdditionalExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aiaOcspServers': ?aiaOcspServers,
      'caOptions': ?pulumi.Input.mapOptionalInputValue<CertificateConfigX509ConfigCaOptions, Map<String, dynamic>>(caOptions, (value) => value.toMap()),
      'keyUsage': pulumi.Input.mapInputValue<CertificateConfigX509ConfigKeyUsage, Map<String, dynamic>>(keyUsage, (value) => value.toMap()),
      'nameConstraints': ?pulumi.Input.mapOptionalInputValue<CertificateConfigX509ConfigNameConstraints, Map<String, dynamic>>(nameConstraints, (value) => value.toMap()),
      'policyIds': ?pulumi.Input.mapOptionalInputValue<List<CertificateConfigX509ConfigPolicyId>, List<Map<String, dynamic>>>(policyIds, (value) => pulumi.Input.encodeList<CertificateConfigX509ConfigPolicyId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CertificateConfigX509Config.fromMap(Map<String, dynamic> map) {
    return CertificateConfigX509Config(
      additionalExtensions: (() { final guardedValue = map['additionalExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateConfigX509ConfigAdditionalExtension>(guardedValue, (value) => CertificateConfigX509ConfigAdditionalExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aiaOcspServers: (() { final guardedValue = map['aiaOcspServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      caOptions: (() { final guardedValue = map['caOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateConfigX509ConfigCaOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyUsage: pulumi.Input.fromValue(CertificateConfigX509ConfigKeyUsage.fromMap((map['keyUsage']! as Map).cast<String, dynamic>())),
      nameConstraints: (() { final guardedValue = map['nameConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateConfigX509ConfigNameConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyIds: (() { final guardedValue = map['policyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateConfigX509ConfigPolicyId>(guardedValue, (value) => CertificateConfigX509ConfigPolicyId.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
