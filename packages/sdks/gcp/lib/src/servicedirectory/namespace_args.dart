// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Resource labels associated with this Namespace. No more than 64 user
  /// labels can be associated with a given resource. Label keys and values can
  /// be no longer than 63 characters.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location for the Namespace.
  final pulumi.Input<String> location;
  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  final pulumi.Input<String> namespaceId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [NamespaceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Resource labels associated with this Namespace. No more than 64 user
  /// [location] The location for the Namespace.
  /// [namespaceId] The Resource ID must be 1-63 characters long, including digits,
  /// [project] The ID of the project in which the resource belongs.
  const NamespaceArgs({
    this.deletionPolicy,
    this.labels,
    required this.location,
    required this.namespaceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
