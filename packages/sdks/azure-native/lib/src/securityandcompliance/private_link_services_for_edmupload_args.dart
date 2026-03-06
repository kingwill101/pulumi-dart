// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kind.dart';
import 'services_properties.dart';
import 'services_resource_identity.dart';

/// {@template pulumi_securityandcompliance_private_link_services_for_edmupload_args_doc}
/// The set of arguments for PrivateLinkServicesForEDMUpload.
/// {@endtemplate}
/// {@macro pulumi_securityandcompliance_private_link_services_for_edmupload_args_doc}
class PrivateLinkServicesForEDMUploadArgs {
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

  /// Creates a new [PrivateLinkServicesForEDMUploadArgs].
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [kind] The kind of the service.
  /// [location] The resource location.
  /// [properties] The common properties of a service.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [resourceName] The name of the service instance.
  /// [tags] The resource tags.
  const PrivateLinkServicesForEDMUploadArgs({
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
      'kind': pulumi.Input.mapInputValue<Kind, String>(kind, (value) => value.wireValue),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ServicesProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory PrivateLinkServicesForEDMUploadArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServicesForEDMUploadArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicesResourceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(Kind.fromValue(map['kind']! as String)),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicesProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

