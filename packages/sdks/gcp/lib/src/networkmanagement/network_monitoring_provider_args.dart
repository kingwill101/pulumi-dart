// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanagement_network_monitoring_provider_network_monitoring_provider_args_doc}
/// The set of arguments for NetworkMonitoringProvider.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_network_monitoring_provider_network_monitoring_provider_args_doc}
class NetworkMonitoringProviderArgs {
  /// The deletion policy for the Network Monitoring Provider.
  /// Setting `deletionPolicy = "FORCE"` forces the deletion of all nested resources
  /// (MonitoringPoints, NetworkPaths, WebPaths) belonging to this provider on deletion.
  final pulumi.Input<String?>? deletionPolicy;
  /// The location of the Network Monitoring Provider. Currently only `global` is supported.
  final pulumi.Input<String> location;
  /// The ID to use for the Network Monitoring Provider. This will become the last
  /// component of the provider's resource name.
  final pulumi.Input<String> networkMonitoringProviderId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The type of the Network Monitoring Provider.
  /// Currently only `EXTERNAL` is supported.
  final pulumi.Input<String> providerType;

  /// Creates a new [NetworkMonitoringProviderArgs].
  /// [deletionPolicy] The deletion policy for the Network Monitoring Provider.
  /// [location] The location of the Network Monitoring Provider. Currently only `global` is supported.
  /// [networkMonitoringProviderId] The ID to use for the Network Monitoring Provider. This will become the last
  /// [project] The ID of the project in which the resource belongs.
  /// [providerType] The type of the Network Monitoring Provider.
  const NetworkMonitoringProviderArgs({
    this.deletionPolicy,
    required this.location,
    required this.networkMonitoringProviderId,
    this.project,
    required this.providerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'networkMonitoringProviderId': networkMonitoringProviderId,
      'project': ?project,
      'providerType': providerType,
    };
  }

  factory NetworkMonitoringProviderArgs.fromMap(Map<String, dynamic> map) {
    return NetworkMonitoringProviderArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      networkMonitoringProviderId: pulumi.Input.fromValue(map['networkMonitoringProviderId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerType: pulumi.Input.fromValue(map['providerType'] as String),
    );
  }
}
