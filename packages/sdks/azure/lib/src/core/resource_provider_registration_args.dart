// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_provider_registration_feature.dart';

/// {@template pulumi_core_resource_provider_registration_resource_provider_registration_args_doc}
/// The set of arguments for ResourceProviderRegistration.
/// {@endtemplate}
/// {@macro pulumi_core_resource_provider_registration_resource_provider_registration_args_doc}
class ResourceProviderRegistrationArgs {
  /// A list of `feature` blocks as defined below.
  ///
  /// &gt; **Note:** The `feature` block allows a Preview Feature to be explicitly Registered or Unregistered for this Resource Provider - once a Feature has been explicitly Registered or Unregistered, it must be specified in the Terraform Configuration (it's not possible to reset this to the default, unspecified, state).
  final pulumi.Input<List<ResourceProviderRegistrationFeature>?>? features;
  /// The namespace of the Resource Provider which should be registered. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;

  /// Creates a new [ResourceProviderRegistrationArgs].
  /// [features] A list of `feature` blocks as defined below.
  /// [name] The namespace of the Resource Provider which should be registered. Changing this forces a new resource to be created.
  const ResourceProviderRegistrationArgs({
    this.features,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?pulumi.Input.mapOptionalInputValue<List<ResourceProviderRegistrationFeature>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<ResourceProviderRegistrationFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory ResourceProviderRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return ResourceProviderRegistrationArgs(
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceProviderRegistrationFeature>(guardedValue, (value) => ResourceProviderRegistrationFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
