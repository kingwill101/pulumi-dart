// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_cert_verification.dart';

class HostingCustomDomainCert {
  /// The state of the certificate. Only the `CERT_ACTIVE` and
  /// `CERT_EXPIRING_SOON` states provide SSL coverage for a domain name. If the
  /// state is `PROPAGATING` and Hosting had an active cert for the domain name
  /// before, that formerly-active cert provides SSL coverage for the domain name
  /// until the current cert propagates.
  final pulumi.Input<String>? state;
  /// The record's type, which determines what data the record contains.
  final pulumi.Input<String>? type;
  /// A set of ACME challenges you can add to your DNS records or existing,
  /// non-Hosting hosting provider to allow Hosting to create an SSL certificate
  /// for your domain name before you point traffic toward hosting. You can use
  /// thse challenges as part of a zero downtime transition from your old
  /// provider to Hosting.
  /// Structure is documented below.
  final pulumi.Input<HostingCustomDomainCertVerification>? verification;

  /// Creates a new [HostingCustomDomainCert].
  /// [state] The state of the certificate. Only the `CERT_ACTIVE` and
  /// [type] The record's type, which determines what data the record contains.
  /// [verification] A set of ACME challenges you can add to your DNS records or existing,
  const HostingCustomDomainCert({
    this.state,
    this.type,
    this.verification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
      'type': ?type,
      'verification': ?pulumi.Input.mapOptionalInputValue<HostingCustomDomainCertVerification, Map<String, dynamic>>(verification, (value) => value.toMap()),
    };
  }

  factory HostingCustomDomainCert.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainCert(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verification: (() { final guardedValue = map['verification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostingCustomDomainCertVerification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

