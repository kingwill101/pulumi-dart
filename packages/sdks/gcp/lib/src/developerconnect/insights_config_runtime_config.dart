// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_config_runtime_config_app_hub_workload.dart';
import 'insights_config_runtime_config_gke_workload.dart';

class InsightsConfigRuntimeConfig {
  /// AppHubWorkload represents the App Hub Workload.
  /// Structure is documented below.
  final pulumi.Input<InsightsConfigRuntimeConfigAppHubWorkload>? appHubWorkload;
  /// GKEWorkload represents the Google Kubernetes Engine runtime.
  /// Structure is documented below.
  final pulumi.Input<InsightsConfigRuntimeConfigGkeWorkload>? gkeWorkload;
  /// (Output)
  /// The state of the Runtime.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// LINKED
  /// UNLINKED
  final pulumi.Input<String>? state;
  /// The URI of the runtime configuration.
  /// For GKE, this is the cluster name.
  /// For Cloud Run, this is the service name.
  final pulumi.Input<String> uri;

  /// Creates a new [InsightsConfigRuntimeConfig].
  /// [appHubWorkload] AppHubWorkload represents the App Hub Workload.
  /// [gkeWorkload] GKEWorkload represents the Google Kubernetes Engine runtime.
  /// [state] (Output)
  /// [uri] The URI of the runtime configuration.
  InsightsConfigRuntimeConfig({
    this.appHubWorkload,
    this.gkeWorkload,
    this.state,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appHubWorkload': ?pulumi.Input.mapOptionalInputValue<InsightsConfigRuntimeConfigAppHubWorkload, Map<String, dynamic>>(appHubWorkload, (value) => value.toMap()),
      'gkeWorkload': ?pulumi.Input.mapOptionalInputValue<InsightsConfigRuntimeConfigGkeWorkload, Map<String, dynamic>>(gkeWorkload, (value) => value.toMap()),
      'state': ?state,
      'uri': uri,
    };
  }

  factory InsightsConfigRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return InsightsConfigRuntimeConfig(
      appHubWorkload: map['appHubWorkload'] == null ? null : (InsightsConfigRuntimeConfigAppHubWorkload.fromMap((map['appHubWorkload'] as Map).cast<String, dynamic>())).input(),
      gkeWorkload: map['gkeWorkload'] == null ? null : (InsightsConfigRuntimeConfigGkeWorkload.fromMap((map['gkeWorkload'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

