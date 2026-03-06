// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.
class DefaultSnatStatus {
  /// Disables cluster default sNAT rules.
  final pulumi.Input<bool>? disabled;

  /// Creates a new [DefaultSnatStatus].
  /// [disabled] Disables cluster default sNAT rules.
  const DefaultSnatStatus({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
    };
  }

  factory DefaultSnatStatus.fromMap(Map<String, dynamic> map) {
    return DefaultSnatStatus(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

