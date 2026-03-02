// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_service_connection_map_args_doc}
/// Arguments for getServiceConnectionMap.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_service_connection_map_args_doc}
class GetServiceConnectionMapArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceConnectionMapId;

  /// Creates a new [GetServiceConnectionMapArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceConnectionMapId] Required.
  GetServiceConnectionMapArgs({
    required this.location,
    this.project,
    required this.serviceConnectionMapId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceConnectionMapId': serviceConnectionMapId,
    };
  }

  factory GetServiceConnectionMapArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionMapArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      serviceConnectionMapId: (map['serviceConnectionMapId'] as String).input(),
    );
  }
}

