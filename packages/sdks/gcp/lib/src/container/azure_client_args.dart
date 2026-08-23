// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_azure_client_azure_client_args_doc}
/// The set of arguments for AzureClient.
/// {@endtemplate}
/// {@macro pulumi_container_azure_client_azure_client_args_doc}
class AzureClientArgs {
  /// The Azure Active Directory Application ID.
  final pulumi.Input<String> applicationId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// The name of this resource.
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// The Azure Active Directory Tenant ID.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String> tenantId;

  /// Creates a new [AzureClientArgs].
  /// [applicationId] The Azure Active Directory Application ID.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [location] The location for the resource
  /// [name] The name of this resource.
  /// [project] The project for the resource
  /// [tenantId] The Azure Active Directory Tenant ID.
  const AzureClientArgs({
    required this.applicationId,
    this.deletionPolicy,
    required this.location,
    this.name,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'name': ?name,
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory AzureClientArgs.fromMap(Map<String, dynamic> map) {
    return AzureClientArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
