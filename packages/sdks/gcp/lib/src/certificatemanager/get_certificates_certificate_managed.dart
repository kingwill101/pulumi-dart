// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificates_certificate_managed_authorization_attempt_info.dart';
import 'get_certificates_certificate_managed_provisioning_issue.dart';

class GetCertificatesCertificateManaged {
  /// Detailed state of the latest authorization attempt for each domain
  /// specified for this Managed Certificate.
  final pulumi.Input<List<GetCertificatesCertificateManagedAuthorizationAttemptInfo>> authorizationAttemptInfos;
  /// Authorizations that will be used for performing domain authorization. Either issuanceConfig or dnsAuthorizations should be specificed, but not both.
  final pulumi.Input<List<String>> dnsAuthorizations;
  /// The domains for which a managed SSL certificate will be generated.
  /// Wildcard domains are only supported with DNS challenge resolution
  final pulumi.Input<List<String>> domains;
  /// The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format projects/*/locations/*/certificateIssuanceConfigs/*.
  /// If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
  /// Either issuanceConfig or dnsAuthorizations should be specificed, but not both.
  final pulumi.Input<String> issuanceConfig;
  /// Information about issues with provisioning this Managed Certificate.
  final pulumi.Input<List<GetCertificatesCertificateManagedProvisioningIssue>> provisioningIssues;
  /// A state of this Managed Certificate.
  final pulumi.Input<String> state;

  /// Creates a new [GetCertificatesCertificateManaged].
  /// [authorizationAttemptInfos] Detailed state of the latest authorization attempt for each domain
  /// [dnsAuthorizations] Authorizations that will be used for performing domain authorization. Either issuanceConfig or dnsAuthorizations should be specificed, but not both.
  /// [domains] The domains for which a managed SSL certificate will be generated.
  /// [issuanceConfig] The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format projects/*/locations/*/certificateIssuanceConfigs/*.
  /// [provisioningIssues] Information about issues with provisioning this Managed Certificate.
  /// [state] A state of this Managed Certificate.
  const GetCertificatesCertificateManaged({
    required this.authorizationAttemptInfos,
    required this.dnsAuthorizations,
    required this.domains,
    required this.issuanceConfig,
    required this.provisioningIssues,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationAttemptInfos': pulumi.Input.mapInputValue<List<GetCertificatesCertificateManagedAuthorizationAttemptInfo>, List<Map<String, dynamic>>>(authorizationAttemptInfos, (value) => pulumi.Input.encodeList<GetCertificatesCertificateManagedAuthorizationAttemptInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsAuthorizations': dnsAuthorizations,
      'domains': domains,
      'issuanceConfig': issuanceConfig,
      'provisioningIssues': pulumi.Input.mapInputValue<List<GetCertificatesCertificateManagedProvisioningIssue>, List<Map<String, dynamic>>>(provisioningIssues, (value) => pulumi.Input.encodeList<GetCertificatesCertificateManagedProvisioningIssue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
    };
  }

  factory GetCertificatesCertificateManaged.fromMap(Map<String, dynamic> map) {
    return GetCertificatesCertificateManaged(
      authorizationAttemptInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCertificatesCertificateManagedAuthorizationAttemptInfo>(map['authorizationAttemptInfos']!, (value) => GetCertificatesCertificateManagedAuthorizationAttemptInfo.fromMap((value as Map).cast<String, dynamic>()))),
      dnsAuthorizations: pulumi.Input.fromValue((map['dnsAuthorizations'] as List).cast<String>()),
      domains: pulumi.Input.fromValue((map['domains'] as List).cast<String>()),
      issuanceConfig: pulumi.Input.fromValue(map['issuanceConfig'] as String),
      provisioningIssues: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCertificatesCertificateManagedProvisioningIssue>(map['provisioningIssues']!, (value) => GetCertificatesCertificateManagedProvisioningIssue.fromMap((value as Map).cast<String, dynamic>()))),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

