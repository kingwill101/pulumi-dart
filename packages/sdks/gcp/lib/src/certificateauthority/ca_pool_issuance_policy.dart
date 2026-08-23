// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_issuance_policy_allowed_issuance_modes.dart';
import 'ca_pool_issuance_policy_allowed_key_type.dart';
import 'ca_pool_issuance_policy_baseline_values.dart';
import 'ca_pool_issuance_policy_identity_constraints.dart';

class CaPoolIssuancePolicy {
  /// IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicyAllowedIssuanceModes>? allowedIssuanceModes;
  /// If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here.
  /// Otherwise, any key may be used. You can specify only one key type of those listed here.
  /// Structure is documented below.
  final pulumi.Input<List<CaPoolIssuancePolicyAllowedKeyType>>? allowedKeyTypes;
  /// The duration to backdate all certificates issued from this CaPool. If not set, the
  /// certificates will be issued with a notBeforeTime of the issuance time (i.e. the current
  /// time). If set, the certificates will be issued with a notBeforeTime of the issuance
  /// time minus the backdate_duration. The notAfterTime will be adjusted to preserve the
  /// requested lifetime. The backdateDuration must be less than or equal to 48 hours.
  final pulumi.Input<String>? backdateDuration;
  /// A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request
  /// includes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate
  /// request uses a CertificateTemplate that defines conflicting predefinedValues for the same properties, the certificate
  /// issuance request will fail.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicyBaselineValues>? baselineValues;
  /// Describes constraints on identities that may appear in Certificates issued through this CaPool.
  /// If this is omitted, then this CaPool will not add restrictions on a certificate's identity.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicyIdentityConstraints>? identityConstraints;
  /// The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority
  /// expires before a Certificate's requested maximumLifetime, the effective lifetime will be explicitly truncated to match it.
  final pulumi.Input<String>? maximumLifetime;

  /// Creates a new [CaPoolIssuancePolicy].
  /// [allowedIssuanceModes] IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool.
  /// [allowedKeyTypes] If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here.
  /// [backdateDuration] The duration to backdate all certificates issued from this CaPool. If not set, the
  /// [baselineValues] A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request
  /// [identityConstraints] Describes constraints on identities that may appear in Certificates issued through this CaPool.
  /// [maximumLifetime] The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority
  const CaPoolIssuancePolicy({
    this.allowedIssuanceModes,
    this.allowedKeyTypes,
    this.backdateDuration,
    this.baselineValues,
    this.identityConstraints,
    this.maximumLifetime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIssuanceModes': ?pulumi.Input.mapOptionalInputValue<CaPoolIssuancePolicyAllowedIssuanceModes, Map<String, dynamic>>(allowedIssuanceModes, (value) => value.toMap()),
      'allowedKeyTypes': ?pulumi.Input.mapOptionalInputValue<List<CaPoolIssuancePolicyAllowedKeyType>, List<Map<String, dynamic>>>(allowedKeyTypes, (value) => pulumi.Input.encodeList<CaPoolIssuancePolicyAllowedKeyType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backdateDuration': ?backdateDuration,
      'baselineValues': ?pulumi.Input.mapOptionalInputValue<CaPoolIssuancePolicyBaselineValues, Map<String, dynamic>>(baselineValues, (value) => value.toMap()),
      'identityConstraints': ?pulumi.Input.mapOptionalInputValue<CaPoolIssuancePolicyIdentityConstraints, Map<String, dynamic>>(identityConstraints, (value) => value.toMap()),
      'maximumLifetime': ?maximumLifetime,
    };
  }

  factory CaPoolIssuancePolicy.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicy(
      allowedIssuanceModes: (() { final guardedValue = map['allowedIssuanceModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CaPoolIssuancePolicyAllowedIssuanceModes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      allowedKeyTypes: (() { final guardedValue = map['allowedKeyTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CaPoolIssuancePolicyAllowedKeyType>(guardedValue, (value) => CaPoolIssuancePolicyAllowedKeyType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backdateDuration: (() { final guardedValue = map['backdateDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baselineValues: (() { final guardedValue = map['baselineValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CaPoolIssuancePolicyBaselineValues.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityConstraints: (() { final guardedValue = map['identityConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CaPoolIssuancePolicyIdentityConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumLifetime: (() { final guardedValue = map['maximumLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
