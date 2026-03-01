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
    pulumi.Output<String>? certificateId,
    pulumi.Output<String>? certificateName,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? customDomain,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? origin,
    pulumi.Output<int>? ttl,
  }) :
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      customDomain = pulumi.Input.asOptionalInput<String>(customDomain),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      origin = pulumi.Input.asOptionalInput<String>(origin),
      ttl = pulumi.Input.asOptionalInput<int>(ttl);

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
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      customDomain: map['customDomain'] == null ? null : pulumi.Output.create<String>(map['customDomain'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      origin: map['origin'] == null ? null : pulumi.Output.create<String>(map['origin'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
    );
  }
}

