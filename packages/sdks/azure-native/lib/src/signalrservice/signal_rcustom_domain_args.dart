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
  SignalRCustomDomainArgs({
    required pulumi.Output<ResourceReference> customCertificate,
    required pulumi.Output<String> domainName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      customCertificate = pulumi.Input.asInput<ResourceReference>(customCertificate),
      domainName = pulumi.Input.asInput<String>(domainName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

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
      customCertificate: pulumi.Output.create<ResourceReference>(ResourceReference.fromMap((map['customCertificate'] as Map).cast<String, dynamic>())),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

