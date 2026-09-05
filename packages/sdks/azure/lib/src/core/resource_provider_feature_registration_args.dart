// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_resource_provider_feature_registration_resource_provider_feature_registration_args_doc}
/// The set of arguments for ResourceProviderFeatureRegistration.
/// {@endtemplate}
/// {@macro pulumi_core_resource_provider_feature_registration_resource_provider_feature_registration_args_doc}
class ResourceProviderFeatureRegistrationArgs {
  /// Specifies the name of the feature to register. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The Resource Provider name. Changing this forces a new resource to be created.
  final pulumi.Input<String> providerName;

  /// Creates a new [ResourceProviderFeatureRegistrationArgs].
  /// [name] Specifies the name of the feature to register. Changing this forces a new resource to be created.
  /// [providerName] The Resource Provider name. Changing this forces a new resource to be created.
  const ResourceProviderFeatureRegistrationArgs({
    this.name,
    required this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'providerName': providerName,
    };
  }

  factory ResourceProviderFeatureRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return ResourceProviderFeatureRegistrationArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
    );
  }
}
