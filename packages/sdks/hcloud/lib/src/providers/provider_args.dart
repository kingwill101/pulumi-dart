// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// The Hetzner Cloud API endpoint, can be used to override the default API Endpoint https://api.hetzner.cloud/v1.
  final pulumi.Input<String>? endpoint;
  /// The Hetzner API endpoint, can be used to override the default API Endpoint https://api.hetzner.com/v1.
  final pulumi.Input<String>? endpointHetzner;
  /// The type of function to be used during the polling.
  final pulumi.Input<String>? pollFunction;
  /// The interval at which actions are polled by the client. Default `500ms`. Increase this interval if you run into rate limiting errors.
  final pulumi.Input<String>? pollInterval;
  /// The Hetzner Cloud API token, can also be specified with the HCLOUD_TOKEN environment variable.
  final pulumi.Input<String>? token;

  /// Creates a new [ProviderArgs].
  /// [endpoint] The Hetzner Cloud API endpoint, can be used to override the default API Endpoint https://api.hetzner.cloud/v1.
  /// [endpointHetzner] The Hetzner API endpoint, can be used to override the default API Endpoint https://api.hetzner.com/v1.
  /// [pollFunction] The type of function to be used during the polling.
  /// [pollInterval] The interval at which actions are polled by the client. Default `500ms`. Increase this interval if you run into rate limiting errors.
  /// [token] The Hetzner Cloud API token, can also be specified with the HCLOUD_TOKEN environment variable.
  ProviderArgs({
    this.endpoint,
    this.endpointHetzner,
    this.pollFunction,
    this.pollInterval,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'endpointHetzner': ?endpointHetzner,
      'pollFunction': ?pollFunction,
      'pollInterval': ?pollInterval,
      'token': ?token,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      endpointHetzner: map['endpointHetzner'] == null ? null : (map['endpointHetzner'] as String).input(),
      pollFunction: map['pollFunction'] == null ? null : (map['pollFunction'] as String).input(),
      pollInterval: map['pollInterval'] == null ? null : (map['pollInterval'] as String).input(),
      token: map['token'] == null ? null : (map['token'] as String).input(),
    );
  }
}

