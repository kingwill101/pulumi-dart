// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceProviderFeatureRegistration resources.
class ResourceProviderFeatureRegistrationState {
  /// Specifies the name of the feature to register. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Resource Provider name. Changing this forces a new resource to be created.
  final pulumi.Input<String>? providerName;

  /// Creates a new [ResourceProviderFeatureRegistrationState].
  /// [name] Specifies the name of the feature to register. Changing this forces a new resource to be created.
  /// [providerName] The Resource Provider name. Changing this forces a new resource to be created.
  const ResourceProviderFeatureRegistrationState({
    this.name,
    this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'providerName': ?providerName,
    };
  }

  factory ResourceProviderFeatureRegistrationState.fromMap(Map<String, dynamic> map) {
    return ResourceProviderFeatureRegistrationState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
