// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_service_binding_networkservices_v1beta1_args_doc}
/// Arguments for getServiceBinding.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_service_binding_networkservices_v1beta1_args_doc}
class GetServiceBindingNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceBindingId;

  /// Creates a new [GetServiceBindingNetworkservicesV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceBindingId] Required.
  GetServiceBindingNetworkservicesV1beta1Args({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceBindingId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceBindingId = pulumi.Input.asInput<String>(serviceBindingId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceBindingId': serviceBindingId,
    };
  }

  factory GetServiceBindingNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetServiceBindingNetworkservicesV1beta1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceBindingId: pulumi.Output.create<String>(map['serviceBindingId'] as String),
    );
  }
}

