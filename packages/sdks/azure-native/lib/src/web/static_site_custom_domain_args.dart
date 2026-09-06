// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_static_site_custom_domain_args_doc}
/// The set of arguments for StaticSiteCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_web_static_site_custom_domain_args_doc}
class StaticSiteCustomDomainArgs {
  /// The custom domain name.
  final pulumi.Input<String?>? domainName;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Validation method for adding a custom domain
  final pulumi.Input<String?>? validationMethod;

  /// Creates a new [StaticSiteCustomDomainArgs].
  /// [domainName] The custom domain name.
  /// [kind] Kind of resource.
  /// [name] Name of the static site.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [validationMethod] Validation method for adding a custom domain
  StaticSiteCustomDomainArgs({
    this.domainName,
    this.kind,
    required this.name,
    required this.resourceGroupName,
    pulumi.Input<String?>? validationMethod,
  }) : validationMethod = validationMethod ?? pulumi.Input.fromValue('cname-delegation');

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
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      validationMethod: (() { final guardedValue = map['validationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
