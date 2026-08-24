// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_gateway_certificate_zero_trust_gateway_certificate_args_doc}
/// The set of arguments for ZeroTrustGatewayCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_gateway_certificate_zero_trust_gateway_certificate_args_doc}
class ZeroTrustGatewayCertificateArgs {
  final pulumi.Input<String> accountId;
  /// Whether to activate the certificate on Cloudflare's edge. When true, the certificate will be activated. When false, the certificate will be deactivated at the edge. This is a Terraform-only field and does not appear in the API response. Monitor `bindingStatus` for the activation status. Once a certificate is activated, you may use the certificate to intercept traffic
  final pulumi.Input<bool?>? activate;
  /// Sets the certificate validity period in days (range: 1-10,950 days / ~30 years). Defaults to 1,825 days (5 years). **Important**: This field is only settable during the certificate creation.  Certificates becomes immutable after creation - use the `/activate` and `/deactivate` endpoints to manage certificate lifecycle.
  final pulumi.Input<int?>? validityPeriodDays;

  /// Creates a new [ZeroTrustGatewayCertificateArgs].
  /// [accountId] Required.
  /// [activate] Whether to activate the certificate on Cloudflare's edge. When true, the certificate will be activated. When false, the certificate will be deactivated at the edge. This is a Terraform-only field and does not appear in the API response. Monitor `bindingStatus` for the activation status. Once a certificate is activated, you may use the certificate to intercept traffic
  /// [validityPeriodDays] Sets the certificate validity period in days (range: 1-10,950 days / ~30 years). Defaults to 1,825 days (5 years). **Important**: This field is only settable during the certificate creation.  Certificates becomes immutable after creation - use the `/activate` and `/deactivate` endpoints to manage certificate lifecycle.
  const ZeroTrustGatewayCertificateArgs({
    required this.accountId,
    this.activate,
    this.validityPeriodDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'activate': ?activate,
      'validityPeriodDays': ?validityPeriodDays,
    };
  }

  factory ZeroTrustGatewayCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayCertificateArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      activate: (() { final guardedValue = map['activate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validityPeriodDays: (() { final guardedValue = map['validityPeriodDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
