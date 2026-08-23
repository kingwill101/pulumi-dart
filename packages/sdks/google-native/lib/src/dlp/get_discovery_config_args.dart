// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_discovery_config_args_doc}
/// Arguments for getDiscoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_discovery_config_args_doc}
class GetDiscoveryConfigArgs {
  final pulumi.Input<String> discoveryConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDiscoveryConfigArgs].
  /// [discoveryConfigId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetDiscoveryConfigArgs({
    required this.discoveryConfigId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryConfigId': discoveryConfigId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDiscoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoveryConfigArgs(
      discoveryConfigId: pulumi.Input.fromValue(map['discoveryConfigId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
