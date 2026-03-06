// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apphub_get_discovered_service_get_discovered_service_args_doc}
/// Arguments for getDiscoveredService.
/// {@endtemplate}
/// {@macro pulumi_apphub_get_discovered_service_get_discovered_service_args_doc}
class GetDiscoveredServiceArgs {
  /// The location of the discovered service.
  final pulumi.Input<String> location;
  /// The host project of the discovered service.
  final pulumi.Input<String>? project;
  /// The uri of the service.
  final pulumi.Input<String> serviceUri;

  /// Creates a new [GetDiscoveredServiceArgs].
  /// [location] The location of the discovered service.
  /// [project] The host project of the discovered service.
  /// [serviceUri] The uri of the service.
  const GetDiscoveredServiceArgs({
    required this.location,
    this.project,
    required this.serviceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceUri': serviceUri,
    };
  }

  factory GetDiscoveredServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredServiceArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceUri: pulumi.Input.fromValue(map['serviceUri'] as String),
    );
  }
}

