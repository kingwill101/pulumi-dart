// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexDenseScann {
  /// Feature norm type for the ScaNN index.
  /// Possible values are: `FEATURE_NORM_TYPE_UNSPECIFIED`, `NONE`, `UNIT_L2_NORM`.
  final pulumi.Input<String>? featureNormType;

  /// Creates a new [IndexDenseScann].
  /// [featureNormType] Feature norm type for the ScaNN index.
  const IndexDenseScann({
    this.featureNormType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureNormType': ?featureNormType,
    };
  }

  factory IndexDenseScann.fromMap(Map<String, dynamic> map) {
    return IndexDenseScann(
      featureNormType: (() { final guardedValue = map['featureNormType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
