// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBackendPoolBackend {
  /// Location of the backend (IP address or FQDN)
  final pulumi.Input<String> address;
  /// Specifies if the backend is enabled or not. Valid options are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The value to use as the host header sent to the backend.
  final pulumi.Input<String> hostHeader;
  /// The HTTP TCP port number. Possible values are between `1` - `65535`.
  final pulumi.Input<int> httpPort;
  /// The HTTPS TCP port number. Possible values are between `1` - `65535`.
  final pulumi.Input<int> httpsPort;
  /// Priority to use for load balancing. Higher priorities will not be used for load balancing if any lower priority backend is healthy. Defaults to `1`.
  final pulumi.Input<int>? priority;
  /// Weight of this endpoint for load balancing purposes. Defaults to `50`.
  final pulumi.Input<int>? weight;

  /// Creates a new [FrontdoorBackendPoolBackend].
  /// [address] Location of the backend (IP address or FQDN)
  /// [enabled] Specifies if the backend is enabled or not. Valid options are `true` or `false`. Defaults to `true`.
  /// [hostHeader] The value to use as the host header sent to the backend.
  /// [httpPort] The HTTP TCP port number. Possible values are between `1` - `65535`.
  /// [httpsPort] The HTTPS TCP port number. Possible values are between `1` - `65535`.
  /// [priority] Priority to use for load balancing. Higher priorities will not be used for load balancing if any lower priority backend is healthy. Defaults to `1`.
  /// [weight] Weight of this endpoint for load balancing purposes. Defaults to `50`.
  FrontdoorBackendPoolBackend({
    required this.address,
    this.enabled,
    required this.hostHeader,
    required this.httpPort,
    required this.httpsPort,
    this.priority,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'enabled': ?enabled,
      'hostHeader': hostHeader,
      'httpPort': httpPort,
      'httpsPort': httpsPort,
      'priority': ?priority,
      'weight': ?weight,
    };
  }

  factory FrontdoorBackendPoolBackend.fromMap(Map<String, dynamic> map) {
    return FrontdoorBackendPoolBackend(
      address: (map['address'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      hostHeader: (map['hostHeader'] as String).input(),
      httpPort: (map['httpPort'] as int).input(),
      httpsPort: (map['httpsPort'] as int).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      weight: map['weight'] == null ? null : (map['weight']! as int).input(),
    );
  }
}

