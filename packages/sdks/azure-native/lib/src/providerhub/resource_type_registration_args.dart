// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_type_registration_properties.dart';

/// {@template pulumi_providerhub_resource_type_registration_args_doc}
/// The set of arguments for ResourceTypeRegistration.
/// {@endtemplate}
/// {@macro pulumi_providerhub_resource_type_registration_args_doc}
class ResourceTypeRegistrationArgs {
  /// Resource type registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  final pulumi.Input<ResourceTypeRegistrationProperties>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The resource type.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [ResourceTypeRegistrationArgs].
  /// [kind] Resource type registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [properties] Optional.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  ResourceTypeRegistrationArgs({
    this.kind,
    this.properties,
    required this.providerNamespace,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'properties': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
      'resourceType': ?resourceType,
    };
  }

  factory ResourceTypeRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationArgs(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      properties: map['properties'] == null ? null : (ResourceTypeRegistrationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      providerNamespace: (map['providerNamespace'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
    );
  }
}

