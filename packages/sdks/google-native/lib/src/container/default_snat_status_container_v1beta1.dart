// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.
class DefaultSnatStatusContainerV1beta1 {
  /// Disables cluster default sNAT rules.
  final pulumi.Input<bool>? disabled;

  /// Creates a new [DefaultSnatStatusContainerV1beta1].
  /// [disabled] Disables cluster default sNAT rules.
  DefaultSnatStatusContainerV1beta1({this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': ?disabled};
  }

  factory DefaultSnatStatusContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return DefaultSnatStatusContainerV1beta1(
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
