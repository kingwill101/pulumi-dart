// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IntraNodeVisibilityConfig contains the desired config of the intra-node visibility on this cluster.
class IntraNodeVisibilityConfigContainerV1beta1 {
  /// Enables intra node visibility for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [IntraNodeVisibilityConfigContainerV1beta1].
  /// [enabled] Enables intra node visibility for this cluster.
  IntraNodeVisibilityConfigContainerV1beta1({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory IntraNodeVisibilityConfigContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntraNodeVisibilityConfigContainerV1beta1(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
