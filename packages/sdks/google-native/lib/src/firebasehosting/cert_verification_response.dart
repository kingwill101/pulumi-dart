// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_updates_response.dart';
import 'http_update_response.dart';

/// A set of ACME challenges you can use to allow Hosting to create an SSL certificate for your domain name before directing traffic to Hosting servers. Use either the DNS or HTTP challenge; it's not necessary to provide both.
class CertVerificationResponse {
  /// A `TXT` record to add to your DNS records that confirms your intent to let Hosting create an SSL cert for your domain name.
  final pulumi.Input<DnsUpdatesResponse> dns;
  /// A file to add to your existing, non-Hosting hosting service that confirms your intent to let Hosting create an SSL cert for your domain name.
  final pulumi.Input<HttpUpdateResponse> http;

  /// Creates a new [CertVerificationResponse].
  /// [dns] A `TXT` record to add to your DNS records that confirms your intent to let Hosting create an SSL cert for your domain name.
  /// [http] A file to add to your existing, non-Hosting hosting service that confirms your intent to let Hosting create an SSL cert for your domain name.
  const CertVerificationResponse({
    required this.dns,
    required this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dns': pulumi.Input.mapInputValue<DnsUpdatesResponse, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'http': pulumi.Input.mapInputValue<HttpUpdateResponse, Map<String, dynamic>>(http, (value) => value.toMap()),
    };
  }

  factory CertVerificationResponse.fromMap(Map<String, dynamic> map) {
    return CertVerificationResponse(
      dns: pulumi.Input.fromValue(DnsUpdatesResponse.fromMap((map['dns']! as Map).cast<String, dynamic>())),
      http: pulumi.Input.fromValue(HttpUpdateResponse.fromMap((map['http']! as Map).cast<String, dynamic>())),
    );
  }
}

