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
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppDomainOwnershipIdentifierArgs].
  /// [domainOwnershipIdentifierName] Name of domain ownership identifier.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppDomainOwnershipIdentifierArgs({
    required pulumi.Output<String> domainOwnershipIdentifierName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      domainOwnershipIdentifierName = pulumi.Input.asInput<String>(domainOwnershipIdentifierName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainOwnershipIdentifierName': domainOwnershipIdentifierName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppDomainOwnershipIdentifierArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppDomainOwnershipIdentifierArgs(
      domainOwnershipIdentifierName: pulumi.Output.create<String>(map['domainOwnershipIdentifierName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

