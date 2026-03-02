// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_attempt_info_response.dart';
import 'provisioning_issue_response.dart';

/// Configuration and state of a Managed Certificate. Certificate Manager provisions and renews Managed Certificates automatically, for as long as it's authorized to do so.
class ManagedCertificateResponse {
  /// Detailed state of the latest authorization attempt for each domain specified for managed certificate resource.
  final pulumi.Input<List<AuthorizationAttemptInfoResponse>> authorizationAttemptInfo;
  /// Immutable. Authorizations that will be used for performing domain authorization.
  final pulumi.Input<List<String>> dnsAuthorizations;
  /// Immutable. The domains for which a managed SSL certificate will be generated. Wildcard domains are only supported with DNS challenge resolution.
  final pulumi.Input<List<String>> domains;
  /// Immutable. The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format `projects/*/locations/*/certificateIssuanceConfigs/*`. If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
  final pulumi.Input<String> issuanceConfig;
  /// Information about issues with provisioning a Managed Certificate.
  final pulumi.Input<ProvisioningIssueResponse> provisioningIssue;
  /// State of the managed certificate resource.
  final pulumi.Input<String> state;

  /// Creates a new [ManagedCertificateResponse].
  /// [authorizationAttemptInfo] Detailed state of the latest authorization attempt for each domain specified for managed certificate resource.
  /// [dnsAuthorizations] Immutable. Authorizations that will be used for performing domain authorization.
  /// [domains] Immutable. The domains for which a managed SSL certificate will be generated. Wildcard domains are only supported with DNS challenge resolution.
  /// [issuanceConfig] Immutable. The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format `projects/*/locations/*/certificateIssuanceConfigs/*`. If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
  /// [provisioningIssue] Information about issues with provisioning a Managed Certificate.
  /// [state] State of the managed certificate resource.
  ManagedCertificateResponse({
    required this.authorizationAttemptInfo,
    required this.dnsAuthorizations,
    required this.domains,
    required this.issuanceConfig,
    required this.provisioningIssue,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationAttemptInfo': pulumi.Input.mapInputValue<List<AuthorizationAttemptInfoResponse>, List<Map<String, dynamic>>>(authorizationAttemptInfo, (value) => pulumi.Input.encodeList<AuthorizationAttemptInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsAuthorizations': dnsAuthorizations,
      'domains': domains,
      'issuanceConfig': issuanceConfig,
      'provisioningIssue': pulumi.Input.mapInputValue<ProvisioningIssueResponse, Map<String, dynamic>>(provisioningIssue, (value) => value.toMap()),
      'state': state,
    };
  }

  factory ManagedCertificateResponse.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateResponse(
      authorizationAttemptInfo: (pulumi.Input.decodeList<AuthorizationAttemptInfoResponse>(map['authorizationAttemptInfo'], (value) => AuthorizationAttemptInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dnsAuthorizations: ((map['dnsAuthorizations'] as List).cast<String>()).input(),
      domains: ((map['domains'] as List).cast<String>()).input(),
      issuanceConfig: (map['issuanceConfig'] as String).input(),
      provisioningIssue: (ProvisioningIssueResponse.fromMap((map['provisioningIssue'] as Map).cast<String, dynamic>())).input(),
      state: (map['state'] as String).input(),
    );
  }
}

