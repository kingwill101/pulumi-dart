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
      domainOwnershipIdentifierName: (map['domainOwnershipIdentifierName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

