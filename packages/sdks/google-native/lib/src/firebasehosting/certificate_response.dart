// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_verification_response.dart';
import 'status_response.dart';

/// An SSL certificate used to provide end-to-end encryption for requests against your domain name. A `Certificate` can be an actual SSL certificate or, for newly-created custom domains, Hosting's intent to create one.
class CertificateResponse {
  /// The certificate's creation time. For `TEMPORARY` certs this is the time Hosting first generated challenges for your domain name. For all other cert types, it's the time the actual cert was created.
  final pulumi.Input<String> createTime;
  /// The certificate's expiration time. After this time, the cert can no longer be used to provide secure communication between Hosting and your site's visitors.
  final pulumi.Input<String> expireTime;
  /// A set of errors Hosting encountered when attempting to create a cert for your domain name. Resolve these issues to ensure Hosting is able to provide secure communication with your site's visitors.
  final pulumi.Input<List<StatusResponse>> issues;
  /// The state of the certificate. Only the `CERT_ACTIVE` and `CERT_EXPIRING_SOON` states provide SSL coverage for a domain name. If the state is `PROPAGATING` and Hosting had an active cert for the domain name before, that formerly-active cert provides SSL coverage for the domain name until the current cert propagates.
  final pulumi.Input<String> state;
  /// The certificate's type.
  final pulumi.Input<String> type;
  /// A set of ACME challenges you can add to your DNS records or existing, non-Hosting hosting provider to allow Hosting to create an SSL certificate for your domain name before you point traffic toward hosting. You can use thse challenges as part of a zero downtime transition from your old provider to Hosting.
  final pulumi.Input<CertVerificationResponse> verification;

  /// Creates a new [CertificateResponse].
  /// [createTime] The certificate's creation time. For `TEMPORARY` certs this is the time Hosting first generated challenges for your domain name. For all other cert types, it's the time the actual cert was created.
  /// [expireTime] The certificate's expiration time. After this time, the cert can no longer be used to provide secure communication between Hosting and your site's visitors.
  /// [issues] A set of errors Hosting encountered when attempting to create a cert for your domain name. Resolve these issues to ensure Hosting is able to provide secure communication with your site's visitors.
  /// [state] The state of the certificate. Only the `CERT_ACTIVE` and `CERT_EXPIRING_SOON` states provide SSL coverage for a domain name. If the state is `PROPAGATING` and Hosting had an active cert for the domain name before, that formerly-active cert provides SSL coverage for the domain name until the current cert propagates.
  /// [type] The certificate's type.
  /// [verification] A set of ACME challenges you can add to your DNS records or existing, non-Hosting hosting provider to allow Hosting to create an SSL certificate for your domain name before you point traffic toward hosting. You can use thse challenges as part of a zero downtime transition from your old provider to Hosting.
  const CertificateResponse({
    required this.createTime,
    required this.expireTime,
    required this.issues,
    required this.state,
    required this.type,
    required this.verification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'expireTime': expireTime,
      'issues': pulumi.Input.mapInputValue<List<StatusResponse>, List<Map<String, dynamic>>>(issues, (value) => pulumi.Input.encodeList<StatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'type': type,
      'verification': pulumi.Input.mapInputValue<CertVerificationResponse, Map<String, dynamic>>(verification, (value) => value.toMap()),
    };
  }

  factory CertificateResponse.fromMap(Map<String, dynamic> map) {
    return CertificateResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      issues: pulumi.Input.fromValue(pulumi.Input.decodeList<StatusResponse>(map['issues']!, (value) => StatusResponse.fromMap((value as Map).cast<String, dynamic>()))),
      state: pulumi.Input.fromValue(map['state'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      verification: pulumi.Input.fromValue(CertVerificationResponse.fromMap((map['verification']! as Map).cast<String, dynamic>())),
    );
  }
}
