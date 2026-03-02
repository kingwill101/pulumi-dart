// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_cdn_cdn_args_doc}
/// The set of arguments for Cdn.
/// {@endtemplate}
/// {@macro pulumi_index_cdn_cdn_args_doc}
class CdnArgs {
  /// **Deprecated** The ID of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided.
  final pulumi.Input<String>? certificateId;
  /// The unique name of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided.
  final pulumi.Input<String>? certificateName;
  /// The fully qualified domain name (FQDN) of the custom subdomain used with the CDN Endpoint.
  final pulumi.Input<String>? customDomain;
  /// The fully qualified domain name, (FQDN) for a Space.
  final pulumi.Input<String> origin;
  /// The time to live for the CDN Endpoint, in seconds. Default is 3600 seconds.
  final pulumi.Input<int>? ttl;

  /// Creates a new [CdnArgs].
  /// [certificateId] **Deprecated** The ID of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided.
  /// [certificateName] The unique name of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided.
  /// [customDomain] The fully qualified domain name (FQDN) of the custom subdomain used with the CDN Endpoint.
  /// [origin] The fully qualified domain name, (FQDN) for a Space.
  /// [ttl] The time to live for the CDN Endpoint, in seconds. Default is 3600 seconds.
  CdnArgs({
    this.certificateId,
    this.certificateName,
    this.customDomain,
    required this.origin,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'certificateName': ?certificateName,
      'customDomain': ?customDomain,
      'origin': origin,
      'ttl': ?ttl,
    };
  }

  factory CdnArgs.fromMap(Map<String, dynamic> map) {
    return CdnArgs(
      certificateId: map['certificateId'] == null ? null : (map['certificateId']! as String).input(),
      certificateName: map['certificateName'] == null ? null : (map['certificateName']! as String).input(),
      customDomain: map['customDomain'] == null ? null : (map['customDomain']! as String).input(),
      origin: (map['origin'] as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as int).input(),
    );
  }
}

