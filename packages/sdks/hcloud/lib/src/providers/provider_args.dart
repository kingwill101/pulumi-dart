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
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? endpointHetzner,
    pulumi.Output<String>? pollFunction,
    pulumi.Output<String>? pollInterval,
    pulumi.Output<String>? token,
  }) :
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      endpointHetzner = pulumi.Input.asOptionalInput<String>(endpointHetzner),
      pollFunction = pulumi.Input.asOptionalInput<String>(pollFunction),
      pollInterval = pulumi.Input.asOptionalInput<String>(pollInterval),
      token = pulumi.Input.asOptionalInput<String>(token);

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
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      endpointHetzner: map['endpointHetzner'] == null ? null : pulumi.Output.create<String>(map['endpointHetzner'] as String),
      pollFunction: map['pollFunction'] == null ? null : pulumi.Output.create<String>(map['pollFunction'] as String),
      pollInterval: map['pollInterval'] == null ? null : pulumi.Output.create<String>(map['pollInterval'] as String),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
    );
  }
}

