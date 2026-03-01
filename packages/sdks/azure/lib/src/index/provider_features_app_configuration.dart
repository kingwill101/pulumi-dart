// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesAppConfiguration {
  final bool? purgeSoftDeleteOnDestroy;
  final bool? recoverSoftDeleted;

  /// Creates a new [ProviderFeaturesAppConfiguration].
  /// [purgeSoftDeleteOnDestroy] Optional.
  /// [recoverSoftDeleted] Optional.
  ProviderFeaturesAppConfiguration({
    this.purgeSoftDeleteOnDestroy,
    this.recoverSoftDeleted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
      'recoverSoftDeleted': ?recoverSoftDeleted,
    };
  }

  factory ProviderFeaturesAppConfiguration.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesAppConfiguration(
      purgeSoftDeleteOnDestroy: map['purgeSoftDeleteOnDestroy'] == null ? null : map['purgeSoftDeleteOnDestroy'] as bool,
      recoverSoftDeleted: map['recoverSoftDeleted'] == null ? null : map['recoverSoftDeleted'] as bool,
    );
  }
}

