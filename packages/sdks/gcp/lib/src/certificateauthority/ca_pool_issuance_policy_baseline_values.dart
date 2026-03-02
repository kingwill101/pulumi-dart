// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_issuance_policy_baseline_values_additional_extension.dart';
import 'ca_pool_issuance_policy_baseline_values_ca_options.dart';
import 'ca_pool_issuance_policy_baseline_values_key_usage.dart';
import 'ca_pool_issuance_policy_baseline_values_name_constraints.dart';
import 'ca_pool_issuance_policy_baseline_values_policy_id.dart';

class CaPoolIssuancePolicyBaselineValues {
  /// Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
  /// Structure is documented below.
  final pulumi.Input<List<CaPoolIssuancePolicyBaselineValuesAdditionalExtension>>? additionalExtensions;
  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// "Authority Information Access" extension in the certificate.
  final pulumi.Input<List<String>>? aiaOcspServers;
  /// Describes values that are relevant in a CA certificate.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicyBaselineValuesCaOptions> caOptions;
  /// Indicates the intended use for keys that correspond to a certificate.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicyBaselineValuesKeyUsage> keyUsage;
  /// Describes the X.509 name constraints extension.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicyBaselineValuesNameConstraints>? nameConstraints;
  /// Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  /// Structure is documented below.
  final pulumi.Input<List<CaPoolIssuancePolicyBaselineValuesPolicyId>>? policyIds;

  /// Creates a new [CaPoolIssuancePolicyBaselineValues].
  /// [additionalExtensions] Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
  /// [aiaOcspServers] Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// [caOptions] Describes values that are relevant in a CA certificate.
  /// [keyUsage] Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Describes the X.509 name constraints extension.
  /// [policyIds] Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  CaPoolIssuancePolicyBaselineValues({
    this.additionalExtensions,
    this.aiaOcspServers,
    required this.caOptions,
    required this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?pulumi.Input.mapOptionalInputValue<List<CaPoolIssuancePolicyBaselineValuesAdditionalExtension>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<CaPoolIssuancePolicyBaselineValuesAdditionalExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aiaOcspServers': ?aiaOcspServers,
      'caOptions': pulumi.Input.mapInputValue<CaPoolIssuancePolicyBaselineValuesCaOptions, Map<String, dynamic>>(caOptions, (value) => value.toMap()),
      'keyUsage': pulumi.Input.mapInputValue<CaPoolIssuancePolicyBaselineValuesKeyUsage, Map<String, dynamic>>(keyUsage, (value) => value.toMap()),
      'nameConstraints': ?pulumi.Input.mapOptionalInputValue<CaPoolIssuancePolicyBaselineValuesNameConstraints, Map<String, dynamic>>(nameConstraints, (value) => value.toMap()),
      'policyIds': ?pulumi.Input.mapOptionalInputValue<List<CaPoolIssuancePolicyBaselineValuesPolicyId>, List<Map<String, dynamic>>>(policyIds, (value) => pulumi.Input.encodeList<CaPoolIssuancePolicyBaselineValuesPolicyId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CaPoolIssuancePolicyBaselineValues.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyBaselineValues(
      additionalExtensions: map['additionalExtensions'] == null ? null : (pulumi.Input.decodeList<CaPoolIssuancePolicyBaselineValuesAdditionalExtension>(map['additionalExtensions'], (value) => CaPoolIssuancePolicyBaselineValuesAdditionalExtension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      aiaOcspServers: map['aiaOcspServers'] == null ? null : ((map['aiaOcspServers'] as List).cast<String>()).input(),
      caOptions: (CaPoolIssuancePolicyBaselineValuesCaOptions.fromMap((map['caOptions'] as Map).cast<String, dynamic>())).input(),
      keyUsage: (CaPoolIssuancePolicyBaselineValuesKeyUsage.fromMap((map['keyUsage'] as Map).cast<String, dynamic>())).input(),
      nameConstraints: map['nameConstraints'] == null ? null : (CaPoolIssuancePolicyBaselineValuesNameConstraints.fromMap((map['nameConstraints'] as Map).cast<String, dynamic>())).input(),
      policyIds: map['policyIds'] == null ? null : (pulumi.Input.decodeList<CaPoolIssuancePolicyBaselineValuesPolicyId>(map['policyIds'], (value) => CaPoolIssuancePolicyBaselineValuesPolicyId.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

