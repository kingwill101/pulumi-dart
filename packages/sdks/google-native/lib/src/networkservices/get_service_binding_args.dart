// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_service_binding_args_doc}
/// Arguments for getServiceBinding.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_service_binding_args_doc}
class GetServiceBindingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceBindingId;

  /// Creates a new [GetServiceBindingArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceBindingId] Required.
  const GetServiceBindingArgs({
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

  factory GetServiceBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceBindingArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBindingId: pulumi.Input.fromValue(map['serviceBindingId'] as String),
    );
  }
}
