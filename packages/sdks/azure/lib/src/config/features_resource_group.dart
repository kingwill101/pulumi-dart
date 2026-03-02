// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesResourceGroup {
  final pulumi.Input<bool>? preventDeletionIfContainsResources;

  /// Creates a new [FeaturesResourceGroup].
  /// [preventDeletionIfContainsResources] Optional.
  FeaturesResourceGroup({
    this.preventDeletionIfContainsResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preventDeletionIfContainsResources': ?preventDeletionIfContainsResources,
    };
  }

  factory FeaturesResourceGroup.fromMap(Map<String, dynamic> map) {
    return FeaturesResourceGroup(
      preventDeletionIfContainsResources: map['preventDeletionIfContainsResources'] == null ? null : (map['preventDeletionIfContainsResources'] as bool).input(),
    );
  }
}

