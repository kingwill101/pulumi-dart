// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_features_cow.dart';

class PoolFeatures {
  /// Indicates whether copy-on-write (COW) is enabled for the storage pool's images.
  final pulumi.Input<PoolFeaturesCow>? cow;

  /// Creates a new [PoolFeatures].
  /// [cow] Indicates whether copy-on-write (COW) is enabled for the storage pool's images.
  PoolFeatures({
    this.cow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cow': ?pulumi.Input.mapOptionalInputValue<PoolFeaturesCow, Map<String, dynamic>>(cow, (value) => value.toMap()),
    };
  }

  factory PoolFeatures.fromMap(Map<String, dynamic> map) {
    return PoolFeatures(
      cow: map['cow'] == null ? null : (PoolFeaturesCow.fromMap((map['cow']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

