// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_service_binding_args_doc}
/// The set of arguments for ServiceBinding.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_service_binding_args_doc}
class ServiceBindingArgs {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Optional. Set of label tags associated with the ServiceBinding resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Name of the ServiceBinding resource. It matches pattern `projects/*/locations/global/serviceBindings/service_binding_name`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The full Service Directory Service name of the format projects/*/locations/*/namespaces/*/services/*
  final pulumi.Input<String> service;
  /// Required. Short name of the ServiceBinding resource to be created.
  final pulumi.Input<String> serviceBindingId;

  /// Creates a new [ServiceBindingArgs].
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [labels] Optional. Set of label tags associated with the ServiceBinding resource.
  /// [location] Optional.
  /// [name] Name of the ServiceBinding resource. It matches pattern `projects/*/locations/global/serviceBindings/service_binding_name`.
  /// [project] Optional.
  /// [service] The full Service Directory Service name of the format projects/*/locations/*/namespaces/*/services/*
  /// [serviceBindingId] Required. Short name of the ServiceBinding resource to be created.
  ServiceBindingArgs({
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    required this.service,
    required this.serviceBindingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'service': service,
      'serviceBindingId': serviceBindingId,
    };
  }

  factory ServiceBindingArgs.fromMap(Map<String, dynamic> map) {
    return ServiceBindingArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      service: (map['service'] as String).input(),
      serviceBindingId: (map['serviceBindingId'] as String).input(),
    );
  }
}

