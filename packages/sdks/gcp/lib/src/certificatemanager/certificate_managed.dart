// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_managed_authorization_attempt_info.dart';
import 'certificate_managed_provisioning_issue.dart';

class CertificateManaged {
  /// (Output)
  /// Detailed state of the latest authorization attempt for each domain
  /// specified for this Managed Certificate.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nested_managed_provisioning_issue"&gt;&lt;/a&gt;The `provisioning_issue` block contains:
  final pulumi.Input<List<CertificateManagedAuthorizationAttemptInfo>>?
  authorizationAttemptInfos;

  /// Authorizations that will be used for performing domain authorization. Either issuanceConfig or dnsAuthorizations should be specificed, but not both.
  final pulumi.Input<List<String>>? dnsAuthorizations;

  /// The domains for which a managed SSL certificate will be generated.
  /// Wildcard domains are only supported with DNS challenge resolution
  final pulumi.Input<List<String>>? domains;

  /// The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format projects/*/locations/*/certificateIssuanceConfigs/*.
  /// If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
  /// Either issuanceConfig or dnsAuthorizations should be specificed, but not both.
  final pulumi.Input<String>? issuanceConfig;

  /// (Output)
  /// Information about issues with provisioning this Managed Certificate.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateManagedProvisioningIssue>>?
  provisioningIssues;

  /// (Output)
  /// State of the domain for managed certificate issuance.
  final pulumi.Input<String>? state;

  /// Creates a new [CertificateManaged].
  /// [authorizationAttemptInfos] (Output)
  /// [dnsAuthorizations] Authorizations that will be used for performing domain authorization. Either issuanceConfig or dnsAuthorizations should be specificed, but not both.
  /// [domains] The domains for which a managed SSL certificate will be generated.
  /// [issuanceConfig] The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format projects/*/locations/*/certificateIssuanceConfigs/*.
  /// [provisioningIssues] (Output)
  /// [state] (Output)
  CertificateManaged({
    this.authorizationAttemptInfos,
    this.dnsAuthorizations,
    this.domains,
    this.issuanceConfig,
    this.provisioningIssues,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationAttemptInfos':
          ?pulumi.Input.mapOptionalInputValue<
            List<CertificateManagedAuthorizationAttemptInfo>,
            List<Map<String, dynamic>>
          >(
            authorizationAttemptInfos,
            (value) =>
                pulumi.Input.encodeList<
                  CertificateManagedAuthorizationAttemptInfo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dnsAuthorizations': ?dnsAuthorizations,
      'domains': ?domains,
      'issuanceConfig': ?issuanceConfig,
      'provisioningIssues':
          ?pulumi.Input.mapOptionalInputValue<
            List<CertificateManagedProvisioningIssue>,
            List<Map<String, dynamic>>
          >(
            provisioningIssues,
            (value) =>
                pulumi.Input.encodeList<
                  CertificateManagedProvisioningIssue,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'state': ?state,
    };
  }

  factory CertificateManaged.fromMap(Map<String, dynamic> map) {
    return CertificateManaged(
      authorizationAttemptInfos: (() {
        final guardedValue = map['authorizationAttemptInfos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CertificateManagedAuthorizationAttemptInfo>(
            guardedValue,
            (value) => CertificateManagedAuthorizationAttemptInfo.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dnsAuthorizations: (() {
        final guardedValue = map['dnsAuthorizations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      domains: (() {
        final guardedValue = map['domains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      issuanceConfig: (() {
        final guardedValue = map['issuanceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningIssues: (() {
        final guardedValue = map['provisioningIssues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CertificateManagedProvisioningIssue>(
            guardedValue,
            (value) => CertificateManagedProvisioningIssue.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
