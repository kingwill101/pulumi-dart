// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_config_x509_config_additional_extension.dart';
import 'get_authority_config_x509_config_ca_option.dart';
import 'get_authority_config_x509_config_key_usage.dart';
import 'get_authority_config_x509_config_name_constraint.dart';
import 'get_authority_config_x509_config_policy_id.dart';

class GetAuthorityConfigX509Config {
  /// Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
  final pulumi.Input<List<GetAuthorityConfigX509ConfigAdditionalExtension>> additionalExtensions;
  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// "Authority Information Access" extension in the certificate.
  final pulumi.Input<List<String>> aiaOcspServers;
  /// Describes values that are relevant in a CA certificate.
  final pulumi.Input<List<GetAuthorityConfigX509ConfigCaOption>> caOptions;
  /// Indicates the intended use for keys that correspond to a certificate.
  final pulumi.Input<List<GetAuthorityConfigX509ConfigKeyUsage>> keyUsages;
  /// Describes the X.509 name constraints extension.
  final pulumi.Input<List<GetAuthorityConfigX509ConfigNameConstraint>> nameConstraints;
  /// Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  final pulumi.Input<List<GetAuthorityConfigX509ConfigPolicyId>> policyIds;

  /// Creates a new [GetAuthorityConfigX509Config].
  /// [additionalExtensions] Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
  /// [aiaOcspServers] Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// [caOptions] Describes values that are relevant in a CA certificate.
  /// [keyUsages] Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Describes the X.509 name constraints extension.
  /// [policyIds] Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  const GetAuthorityConfigX509Config({
    required this.additionalExtensions,
    required this.aiaOcspServers,
    required this.caOptions,
    required this.keyUsages,
    required this.nameConstraints,
    required this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': pulumi.Input.mapInputValue<List<GetAuthorityConfigX509ConfigAdditionalExtension>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<GetAuthorityConfigX509ConfigAdditionalExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aiaOcspServers': aiaOcspServers,
      'caOptions': pulumi.Input.mapInputValue<List<GetAuthorityConfigX509ConfigCaOption>, List<Map<String, dynamic>>>(caOptions, (value) => pulumi.Input.encodeList<GetAuthorityConfigX509ConfigCaOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyUsages': pulumi.Input.mapInputValue<List<GetAuthorityConfigX509ConfigKeyUsage>, List<Map<String, dynamic>>>(keyUsages, (value) => pulumi.Input.encodeList<GetAuthorityConfigX509ConfigKeyUsage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nameConstraints': pulumi.Input.mapInputValue<List<GetAuthorityConfigX509ConfigNameConstraint>, List<Map<String, dynamic>>>(nameConstraints, (value) => pulumi.Input.encodeList<GetAuthorityConfigX509ConfigNameConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyIds': pulumi.Input.mapInputValue<List<GetAuthorityConfigX509ConfigPolicyId>, List<Map<String, dynamic>>>(policyIds, (value) => pulumi.Input.encodeList<GetAuthorityConfigX509ConfigPolicyId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAuthorityConfigX509Config.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigX509Config(
      additionalExtensions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthorityConfigX509ConfigAdditionalExtension>(map['additionalExtensions']!, (value) => GetAuthorityConfigX509ConfigAdditionalExtension.fromMap((value as Map).cast<String, dynamic>()))),
      aiaOcspServers: pulumi.Input.fromValue((map['aiaOcspServers'] as List).cast<String>()),
      caOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthorityConfigX509ConfigCaOption>(map['caOptions']!, (value) => GetAuthorityConfigX509ConfigCaOption.fromMap((value as Map).cast<String, dynamic>()))),
      keyUsages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthorityConfigX509ConfigKeyUsage>(map['keyUsages']!, (value) => GetAuthorityConfigX509ConfigKeyUsage.fromMap((value as Map).cast<String, dynamic>()))),
      nameConstraints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthorityConfigX509ConfigNameConstraint>(map['nameConstraints']!, (value) => GetAuthorityConfigX509ConfigNameConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      policyIds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthorityConfigX509ConfigPolicyId>(map['policyIds']!, (value) => GetAuthorityConfigX509ConfigPolicyId.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

