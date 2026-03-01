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
    pulumi.Output<String>? kind,
    pulumi.Output<ResourceTypeRegistrationProperties>? properties,
    required pulumi.Output<String> providerNamespace,
    pulumi.Output<String>? resourceType,
  }) :
      kind = pulumi.Input.asOptionalInput<String>(kind),
      properties = pulumi.Input.asOptionalInput<ResourceTypeRegistrationProperties>(properties),
      providerNamespace = pulumi.Input.asInput<String>(providerNamespace),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType);

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
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ResourceTypeRegistrationProperties>(ResourceTypeRegistrationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      providerNamespace: pulumi.Output.create<String>(map['providerNamespace'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
    );
  }
}

