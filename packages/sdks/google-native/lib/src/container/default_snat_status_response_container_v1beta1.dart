// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.
class DefaultSnatStatusResponseContainerV1beta1 {
  /// Disables cluster default sNAT rules.
  final pulumi.Input<bool> disabled;

  /// Creates a new [DefaultSnatStatusResponseContainerV1beta1].
  /// [disabled] Disables cluster default sNAT rules.
  DefaultSnatStatusResponseContainerV1beta1({required this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': disabled};
  }

  factory DefaultSnatStatusResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefaultSnatStatusResponseContainerV1beta1(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
