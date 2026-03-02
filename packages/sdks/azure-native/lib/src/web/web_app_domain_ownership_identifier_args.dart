// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_domain_ownership_identifier_args_doc}
/// The set of arguments for WebAppDomainOwnershipIdentifier.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_domain_ownership_identifier_args_doc}
class WebAppDomainOwnershipIdentifierArgs {
  /// Name of domain ownership identifier.
  final pulumi.Input<String>? domainOwnershipIdentifierName;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// String representation of the identity.
  final pulumi.Input<String>? value;

  /// Creates a new [WebAppDomainOwnershipIdentifierArgs].
  /// [domainOwnershipIdentifierName] Name of domain ownership identifier.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [value] String representation of the identity.
  WebAppDomainOwnershipIdentifierArgs({
    this.domainOwnershipIdentifierName,
    this.kind,
    required this.name,
    required this.resourceGroupName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainOwnershipIdentifierName': ?domainOwnershipIdentifierName,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'value': ?value,
    };
  }

  factory WebAppDomainOwnershipIdentifierArgs.fromMap(Map<String, dynamic> map) {
    return WebAppDomainOwnershipIdentifierArgs(
      domainOwnershipIdentifierName: map['domainOwnershipIdentifierName'] == null ? null : (map['domainOwnershipIdentifierName']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

