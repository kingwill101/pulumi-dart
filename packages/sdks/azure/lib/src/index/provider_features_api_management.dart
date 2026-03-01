// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesApiManagement {
  final bool? purgeSoftDeleteOnDestroy;
  final bool? recoverSoftDeleted;

  /// Creates a new [ProviderFeaturesApiManagement].
  /// [purgeSoftDeleteOnDestroy] Optional.
  /// [recoverSoftDeleted] Optional.
  ProviderFeaturesApiManagement({
    this.purgeSoftDeleteOnDestroy,
    this.recoverSoftDeleted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
      'recoverSoftDeleted': ?recoverSoftDeleted,
    };
  }

  factory ProviderFeaturesApiManagement.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesApiManagement(
      purgeSoftDeleteOnDestroy: map['purgeSoftDeleteOnDestroy'] == null ? null : map['purgeSoftDeleteOnDestroy'] as bool,
      recoverSoftDeleted: map['recoverSoftDeleted'] == null ? null : map['recoverSoftDeleted'] as bool,
    );
  }
}

