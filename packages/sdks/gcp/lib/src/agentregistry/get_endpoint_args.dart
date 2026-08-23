// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agentregistry_get_endpoint_get_endpoint_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_agentregistry_get_endpoint_get_endpoint_args_doc}
class GetEndpointArgs {
  /// The unique identifier for the Endpoint. This or `filter` must be set.
  final pulumi.Input<String>? endpointId;
  /// A filter string that identifies a unique Endpoint. This or `endpointId` must be set.
  final pulumi.Input<String>? filter;
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetEndpointArgs].
  /// [endpointId] The unique identifier for the Endpoint. This or `filter` must be set.
  /// [filter] A filter string that identifies a unique Endpoint. This or `endpointId` must be set.
  /// [location] The location of the resource.
  /// [project] The project in which the resource belongs. If it
  const GetEndpointArgs({
    this.endpointId,
    this.filter,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': ?endpointId,
      'filter': ?filter,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs(
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
