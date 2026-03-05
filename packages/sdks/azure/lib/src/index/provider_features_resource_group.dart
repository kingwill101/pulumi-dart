// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesResourceGroup {
  final pulumi.Input<bool>? preventDeletionIfContainsResources;

  /// Creates a new [ProviderFeaturesResourceGroup].
  /// [preventDeletionIfContainsResources] Optional.
  ProviderFeaturesResourceGroup({
    this.preventDeletionIfContainsResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preventDeletionIfContainsResources': ?preventDeletionIfContainsResources,
    };
  }

  factory ProviderFeaturesResourceGroup.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesResourceGroup(
      preventDeletionIfContainsResources: (() { final guardedValue = map['preventDeletionIfContainsResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

