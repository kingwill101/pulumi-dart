// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';

/// {@template pulumi_signalrservice_signal_rcustom_domain_args_doc}
/// The set of arguments for SignalRCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_signal_rcustom_domain_args_doc}
class SignalRCustomDomainArgs {
  /// Reference to a resource.
  final pulumi.Input<ResourceReference> customCertificate;
  /// The custom domain name.
  final pulumi.Input<String> domainName;
  /// Custom domain name.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [SignalRCustomDomainArgs].
  /// [customCertificate] Reference to a resource.
  /// [domainName] The custom domain name.
  /// [name] Custom domain name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  const SignalRCustomDomainArgs({
    required this.customCertificate,
    required this.domainName,
    this.name,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCertificate': pulumi.Input.mapInputValue<ResourceReference, Map<String, dynamic>>(customCertificate, (value) => value.toMap()),
      'domainName': domainName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory SignalRCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return SignalRCustomDomainArgs(
      customCertificate: pulumi.Input.fromValue(ResourceReference.fromMap((map['customCertificate']! as Map).cast<String, dynamic>())),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
