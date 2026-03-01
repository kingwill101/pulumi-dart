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
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> service,
    required pulumi.Output<String> serviceBindingId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      service = pulumi.Input.asInput<String>(service),
      serviceBindingId = pulumi.Input.asInput<String>(serviceBindingId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      service: pulumi.Output.create<String>(map['service'] as String),
      serviceBindingId: pulumi.Output.create<String>(map['serviceBindingId'] as String),
    );
  }
}

