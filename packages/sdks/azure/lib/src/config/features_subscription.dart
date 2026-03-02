// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesSubscription {
  final pulumi.Input<bool>? preventCancellationOnDestroy;

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
      preventCancellationOnDestroy: map['preventCancellationOnDestroy'] == null ? null : (map['preventCancellationOnDestroy'] as bool).input(),
    );
  }
}

