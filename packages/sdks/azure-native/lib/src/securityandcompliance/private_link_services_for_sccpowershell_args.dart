// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kind.dart';
import 'services_properties.dart';
import 'services_resource_identity.dart';

/// {@template pulumi_securityandcompliance_private_link_services_for_sccpowershell_args_doc}
/// The set of arguments for PrivateLinkServicesForSCCPowershell.
/// {@endtemplate}
/// {@macro pulumi_securityandcompliance_private_link_services_for_sccpowershell_args_doc}
class PrivateLinkServicesForSCCPowershellArgs {
  /// Setting indicating whether the service has a managed identity associated with it.
  final pulumi.Input<ServicesResourceIdentity>? identity;
  /// The kind of the service.
  final pulumi.Input<Kind> kind;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The common properties of a service.
  final pulumi.Input<ServicesProperties>? properties;
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service instance.
  final pulumi.Input<String>? resourceName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateLinkServicesForSCCPowershellArgs].
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [kind] The kind of the service.
  /// [location] The resource location.
  /// [properties] The common properties of a service.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [resourceName] The name of the service instance.
  /// [tags] The resource tags.
  PrivateLinkServicesForSCCPowershellArgs({
    this.identity,
    required this.kind,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.resourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ServicesResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': pulumi.Input.mapInputValue<Kind, String>(kind, (value) => value.value),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ServicesProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory PrivateLinkServicesForSCCPowershellArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServicesForSCCPowershellArgs(
      identity: map['identity'] == null ? null : (ServicesResourceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      kind: (Kind.fromValue(map['kind'] as String)).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (ServicesProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

