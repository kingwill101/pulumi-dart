// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_resource_type_registration_args_doc}
/// Arguments for getResourceTypeRegistration.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_resource_type_registration_args_doc}
class GetResourceTypeRegistrationArgs {
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The resource type.
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetResourceTypeRegistrationArgs].
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  const GetResourceTypeRegistrationArgs({
    required this.providerNamespace,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerNamespace': providerNamespace,
      'resourceType': resourceType,
    };
  }

  factory GetResourceTypeRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceTypeRegistrationArgs(
      providerNamespace: pulumi.Input.fromValue(map['providerNamespace'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

