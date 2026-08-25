// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_cert_verification_dns.dart';
import 'hosting_custom_domain_cert_verification_http.dart';

class HostingCustomDomainCertVerification {
  /// A `TXT` record to add to your DNS records that confirms your intent to
  /// let Hosting create an SSL cert for your domain name.
  /// Structure is documented below.
  final pulumi.Input<HostingCustomDomainCertVerificationDns?>? dns;
  /// A file to add to your existing, non-Hosting hosting service that confirms
  /// your intent to let Hosting create an SSL cert for your domain name.
  /// Structure is documented below.
  final pulumi.Input<HostingCustomDomainCertVerificationHttp?>? http;

  /// Creates a new [HostingCustomDomainCertVerification].
  /// [dns] A `TXT` record to add to your DNS records that confirms your intent to
  /// [http] A file to add to your existing, non-Hosting hosting service that confirms
  const HostingCustomDomainCertVerification({
    this.dns,
    this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dns': ?pulumi.Input.mapOptionalInputValue<HostingCustomDomainCertVerificationDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'http': ?pulumi.Input.mapOptionalInputValue<HostingCustomDomainCertVerificationHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
    };
  }

  factory HostingCustomDomainCertVerification.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainCertVerification(
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostingCustomDomainCertVerificationDns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostingCustomDomainCertVerificationHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
