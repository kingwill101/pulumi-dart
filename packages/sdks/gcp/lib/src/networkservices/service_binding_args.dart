// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_service_binding_service_binding_args_doc}
/// The set of arguments for ServiceBinding.
/// {@endtemplate}
/// {@macro pulumi_networkservices_service_binding_service_binding_args_doc}
class ServiceBindingArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Set of label tags associated with the ServiceBinding resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the ServiceBinding resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The full Service Directory Service name of the format
  /// projects/*/locations/*/namespaces/*/services/*
  final pulumi.Input<String> service;

  /// Creates a new [ServiceBindingArgs].
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [labels] Set of label tags associated with the ServiceBinding resource.
  /// [name] Name of the ServiceBinding resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [service] The full Service Directory Service name of the format
  ServiceBindingArgs({
    this.description,
    this.labels,
    this.name,
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'service': service,
    };
  }

  factory ServiceBindingArgs.fromMap(Map<String, dynamic> map) {
    return ServiceBindingArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      service: (map['service'] as String).input(),
    );
  }
}

