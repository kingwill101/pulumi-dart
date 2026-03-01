// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesCognitiveAccount {
  final bool? purgeSoftDeleteOnDestroy;

  /// Creates a new [ProviderFeaturesCognitiveAccount].
  /// [purgeSoftDeleteOnDestroy] Optional.
  ProviderFeaturesCognitiveAccount({
    this.purgeSoftDeleteOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
    };
  }

  factory ProviderFeaturesCognitiveAccount.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesCognitiveAccount(
      purgeSoftDeleteOnDestroy: map['purgeSoftDeleteOnDestroy'] == null ? null : map['purgeSoftDeleteOnDestroy'] as bool,
    );
  }
}

