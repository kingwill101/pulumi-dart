// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_external_address_external_address_args_doc}
/// The set of arguments for ExternalAddress.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_external_address_external_address_args_doc}
class ExternalAddressArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-provided description for this resource.
  final pulumi.Input<String>? description;
  /// The internal IP address of a workload VM.
  final pulumi.Input<String> internalIp;
  /// The ID of the external IP Address.
  final pulumi.Input<String>? name;
  /// The resource name of the private cloud to create a new external address in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  final pulumi.Input<String> parent;

  /// Creates a new [ExternalAddressArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description for this resource.
  /// [internalIp] The internal IP address of a workload VM.
  /// [name] The ID of the external IP Address.
  /// [parent] The resource name of the private cloud to create a new external address in.
  const ExternalAddressArgs({
    this.deletionPolicy,
    this.description,
    required this.internalIp,
    this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'internalIp': internalIp,
      'name': ?name,
      'parent': parent,
    };
  }

  factory ExternalAddressArgs.fromMap(Map<String, dynamic> map) {
    return ExternalAddressArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalIp: pulumi.Input.fromValue(map['internalIp'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
