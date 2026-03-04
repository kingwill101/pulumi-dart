// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesResourceGroup {
  final pulumi.Input<bool>? preventDeletionIfContainsResources;

  /// Creates a new [FeaturesResourceGroup].
  /// [preventDeletionIfContainsResources] Optional.
  FeaturesResourceGroup({this.preventDeletionIfContainsResources});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preventDeletionIfContainsResources': ?preventDeletionIfContainsResources,
    };
  }

  factory FeaturesResourceGroup.fromMap(Map<String, dynamic> map) {
    return FeaturesResourceGroup(
      preventDeletionIfContainsResources: (() {
        final guardedValue = map['preventDeletionIfContainsResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
