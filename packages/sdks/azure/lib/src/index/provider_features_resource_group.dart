// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesResourceGroup {
  final bool? preventDeletionIfContainsResources;

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
      preventDeletionIfContainsResources: map['preventDeletionIfContainsResources'] == null ? null : map['preventDeletionIfContainsResources'] as bool,
    );
  }
}

