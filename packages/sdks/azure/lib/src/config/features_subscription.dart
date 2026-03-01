// ignore_for_file: unused_element, unnecessary_cast


class FeaturesSubscription {
  final bool? preventCancellationOnDestroy;

  /// Creates a new [FeaturesSubscription].
  /// [preventCancellationOnDestroy] Optional.
  FeaturesSubscription({
    this.preventCancellationOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preventCancellationOnDestroy': ?preventCancellationOnDestroy,
    };
  }

  factory FeaturesSubscription.fromMap(Map<String, dynamic> map) {
    return FeaturesSubscription(
      preventCancellationOnDestroy: map['preventCancellationOnDestroy'] == null ? null : map['preventCancellationOnDestroy'] as bool,
    );
  }
}

