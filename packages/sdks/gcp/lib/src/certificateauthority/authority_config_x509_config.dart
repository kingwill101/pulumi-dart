// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_config_x509_config_additional_extension.dart';
import 'authority_config_x509_config_ca_options.dart';
import 'authority_config_x509_config_key_usage.dart';
import 'authority_config_x509_config_name_constraints.dart';
import 'authority_config_x509_config_policy_id.dart';

class AuthorityConfigX509Config {
  /// Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
  final pulumi.Input<List<AuthorityConfigX509ConfigAdditionalExtension>>? additionalExtensions;
  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// "Authority Information Access" extension in the certificate.
  final pulumi.Input<List<String>>? aiaOcspServers;
  /// Describes values that are relevant in a CA certificate.
  final pulumi.Input<AuthorityConfigX509ConfigCaOptions> caOptions;
  /// Indicates the intended use for keys that correspond to a certificate.
  final pulumi.Input<AuthorityConfigX509ConfigKeyUsage> keyUsage;
  /// Describes the X.509 name constraints extension.
  final pulumi.Input<AuthorityConfigX509ConfigNameConstraints>? nameConstraints;
  /// Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  final pulumi.Input<List<AuthorityConfigX509ConfigPolicyId>>? policyIds;

  /// Creates a new [AuthorityConfigX509Config].
  /// [additionalExtensions] Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
  /// [aiaOcspServers] Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// [caOptions] Describes values that are relevant in a CA certificate.
  /// [keyUsage] Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Describes the X.509 name constraints extension.
  /// [policyIds] Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  const AuthorityConfigX509Config({
    this.additionalExtensions,
    this.aiaOcspServers,
    required this.caOptions,
    required this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?pulumi.Input.mapOptionalInputValue<List<AuthorityConfigX509ConfigAdditionalExtension>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<AuthorityConfigX509ConfigAdditionalExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aiaOcspServers': ?aiaOcspServers,
      'caOptions': pulumi.Input.mapInputValue<AuthorityConfigX509ConfigCaOptions, Map<String, dynamic>>(caOptions, (value) => value.toMap()),
      'keyUsage': pulumi.Input.mapInputValue<AuthorityConfigX509ConfigKeyUsage, Map<String, dynamic>>(keyUsage, (value) => value.toMap()),
      'nameConstraints': ?pulumi.Input.mapOptionalInputValue<AuthorityConfigX509ConfigNameConstraints, Map<String, dynamic>>(nameConstraints, (value) => value.toMap()),
      'policyIds': ?pulumi.Input.mapOptionalInputValue<List<AuthorityConfigX509ConfigPolicyId>, List<Map<String, dynamic>>>(policyIds, (value) => pulumi.Input.encodeList<AuthorityConfigX509ConfigPolicyId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthorityConfigX509Config.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigX509Config(
      additionalExtensions: (() { final guardedValue = map['additionalExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorityConfigX509ConfigAdditionalExtension>(guardedValue, (value) => AuthorityConfigX509ConfigAdditionalExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aiaOcspServers: (() { final guardedValue = map['aiaOcspServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      caOptions: pulumi.Input.fromValue(AuthorityConfigX509ConfigCaOptions.fromMap((map['caOptions']! as Map).cast<String, dynamic>())),
      keyUsage: pulumi.Input.fromValue(AuthorityConfigX509ConfigKeyUsage.fromMap((map['keyUsage']! as Map).cast<String, dynamic>())),
      nameConstraints: (() { final guardedValue = map['nameConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorityConfigX509ConfigNameConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyIds: (() { final guardedValue = map['policyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorityConfigX509ConfigPolicyId>(guardedValue, (value) => AuthorityConfigX509ConfigPolicyId.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
