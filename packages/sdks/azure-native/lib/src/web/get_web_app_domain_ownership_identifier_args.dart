// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_domain_ownership_identifier_args_doc}
/// Arguments for getWebAppDomainOwnershipIdentifier.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_domain_ownership_identifier_args_doc}
class GetWebAppDomainOwnershipIdentifierArgs {
  /// Name of domain ownership identifier.
  final pulumi.Input<String> domainOwnershipIdentifierName;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppDomainOwnershipIdentifierArgs].
  /// [domainOwnershipIdentifierName] Name of domain ownership identifier.
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppDomainOwnershipIdentifierArgs({
    required this.domainOwnershipIdentifierName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainOwnershipIdentifierName': domainOwnershipIdentifierName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppDomainOwnershipIdentifierArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppDomainOwnershipIdentifierArgs(
      domainOwnershipIdentifierName: pulumi.Input.fromValue(map['domainOwnershipIdentifierName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
