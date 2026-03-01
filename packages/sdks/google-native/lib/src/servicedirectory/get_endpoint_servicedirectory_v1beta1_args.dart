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
    required pulumi.Output<String> endpointId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> namespaceId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceId,
  }) :
      endpointId = pulumi.Input.asInput<String>(endpointId),
      location = pulumi.Input.asInput<String>(location),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': endpointId,
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetEndpointServicedirectoryV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEndpointServicedirectoryV1beta1Args(
      endpointId: pulumi.Output.create<String>(map['endpointId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

