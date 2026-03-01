// ignore_for_file: unused_element, unnecessary_cast


class FeaturesApiManagement {
  final bool? purgeSoftDeleteOnDestroy;
  final bool? recoverSoftDeleted;

  /// Creates a new [FeaturesApiManagement].
  /// [purgeSoftDeleteOnDestroy] Optional.
  /// [recoverSoftDeleted] Optional.
  FeaturesApiManagement({
    this.purgeSoftDeleteOnDestroy,
    this.recoverSoftDeleted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
      'recoverSoftDeleted': ?recoverSoftDeleted,
    };
  }

  factory FeaturesApiManagement.fromMap(Map<String, dynamic> map) {
    return FeaturesApiManagement(
      purgeSoftDeleteOnDestroy: map['purgeSoftDeleteOnDestroy'] == null ? null : map['purgeSoftDeleteOnDestroy'] as bool,
      recoverSoftDeleted: map['recoverSoftDeleted'] == null ? null : map['recoverSoftDeleted'] as bool,
    );
  }
}

