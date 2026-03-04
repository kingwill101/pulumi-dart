// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1beta1_get_endpoint_servicedirectory_v1beta1_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1beta1_get_endpoint_servicedirectory_v1beta1_args_doc}
class GetEndpointServicedirectoryV1beta1Args {
  final pulumi.Input<String> endpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetEndpointServicedirectoryV1beta1Args].
  /// [endpointId] Required.
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetEndpointServicedirectoryV1beta1Args({
    required this.endpointId,
    required this.location,
    required this.namespaceId,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': endpointId,
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetEndpointServicedirectoryV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEndpointServicedirectoryV1beta1Args(
      endpointId: pulumi.Input.fromValue(map['endpointId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}
