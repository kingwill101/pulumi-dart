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
  const GetServiceBindingNetworkservicesV1beta1Args({
    required this.location,
    this.project,
    required this.serviceBindingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceBindingId': serviceBindingId,
    };
  }

  factory GetServiceBindingNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetServiceBindingNetworkservicesV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBindingId: pulumi.Input.fromValue(map['serviceBindingId'] as String),
    );
  }
}
