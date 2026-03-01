// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_static_site_custom_domain_args_doc}
/// The set of arguments for StaticSiteCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_web_static_site_custom_domain_args_doc}
class StaticSiteCustomDomainArgs {
  /// The custom domain to create.
  final pulumi.Input<String>? domainName;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Validation method for adding a custom domain
  final pulumi.Input<String>? validationMethod;

  /// Creates a new [StaticSiteCustomDomainArgs].
  /// [domainName] The custom domain to create.
  /// [kind] Kind of resource.
  /// [name] Name of the static site.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [validationMethod] Validation method for adding a custom domain
  StaticSiteCustomDomainArgs({
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? validationMethod,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      validationMethod = pulumi.Input.asOptionalInput<String>(validationMethod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'validationMethod': ?validationMethod,
    };
  }

  factory StaticSiteCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return StaticSiteCustomDomainArgs(
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      validationMethod: map['validationMethod'] == null ? null : pulumi.Output.create<String>(map['validationMethod'] as String),
    );
  }
}

