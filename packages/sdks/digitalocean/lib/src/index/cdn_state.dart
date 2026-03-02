// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Cdn resources.
class CdnState {
  /// **Deprecated** The ID of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided.
  final pulumi.Input<String>? certificateId;
  /// The unique name of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided.
  final pulumi.Input<String>? certificateName;
  /// The date and time when the CDN Endpoint was created.
  final pulumi.Input<String>? createdAt;
  /// The fully qualified domain name (FQDN) of the custom subdomain used with the CDN Endpoint.
  final pulumi.Input<String>? customDomain;
  /// The fully qualified domain name (FQDN) from which the CDN-backed content is served.
  final pulumi.Input<String>? endpoint;
  /// The fully qualified domain name, (FQDN) for a Space.
  final pulumi.Input<String>? origin;
  /// The time to live for the CDN Endpoint, in seconds. Default is 3600 seconds.
  final pulumi.Input<int>? ttl;

  /// Creates a new [CdnState].
  /// [certificateId] **Deprecated** The ID of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided.
  /// [certificateName] The unique name of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided.
  /// [createdAt] The date and time when the CDN Endpoint was created.
  /// [customDomain] The fully qualified domain name (FQDN) of the custom subdomain used with the CDN Endpoint.
  /// [endpoint] The fully qualified domain name (FQDN) from which the CDN-backed content is served.
  /// [origin] The fully qualified domain name, (FQDN) for a Space.
  /// [ttl] The time to live for the CDN Endpoint, in seconds. Default is 3600 seconds.
  CdnState({
    this.certificateId,
    this.certificateName,
    this.createdAt,
    this.customDomain,
    this.endpoint,
    this.origin,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'certificateName': ?certificateName,
      'createdAt': ?createdAt,
      'customDomain': ?customDomain,
      'endpoint': ?endpoint,
      'origin': ?origin,
      'ttl': ?ttl,
    };
  }

  factory CdnState.fromMap(Map<String, dynamic> map) {
    return CdnState(
      certificateId: map['certificateId'] == null ? null : (map['certificateId']! as String).input(),
      certificateName: map['certificateName'] == null ? null : (map['certificateName']! as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      customDomain: map['customDomain'] == null ? null : (map['customDomain']! as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      origin: map['origin'] == null ? null : (map['origin']! as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as int).input(),
    );
  }
}

