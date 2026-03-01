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
  GetDiscoveredServiceArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceUri,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceUri = pulumi.Input.asInput<String>(serviceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceUri': serviceUri,
    };
  }

  factory GetDiscoveredServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredServiceArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceUri: pulumi.Output.create<String>(map['serviceUri'] as String),
    );
  }
}

