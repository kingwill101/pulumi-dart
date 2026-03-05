// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_azure_client_azure_client_args_doc}
/// The set of arguments for AzureClient.
/// {@endtemplate}
/// {@macro pulumi_container_azure_client_azure_client_args_doc}
class AzureClientArgs {
  /// The Azure Active Directory Application ID.
  final pulumi.Input<String> applicationId;
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
  /// [location] The location for the resource
  /// [name] The name of this resource.
  /// [project] The project for the resource
  /// [tenantId] The Azure Active Directory Tenant ID.
  AzureClientArgs({
    required this.applicationId,
    required this.location,
    this.name,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'location': location,
      'name': ?name,
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory AzureClientArgs.fromMap(Map<String, dynamic> map) {
    return AzureClientArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

