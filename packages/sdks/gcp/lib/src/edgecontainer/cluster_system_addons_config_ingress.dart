// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterSystemAddonsConfigIngress {
  /// Whether Ingress is disabled.
  final pulumi.Input<bool?>? disabled;
  /// Ingress VIP.
  final pulumi.Input<String?>? ipv4Vip;

  /// Creates a new [ClusterSystemAddonsConfigIngress].
  /// [disabled] Whether Ingress is disabled.
  /// [ipv4Vip] Ingress VIP.
  const ClusterSystemAddonsConfigIngress({
    this.disabled,
    this.ipv4Vip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'ipv4Vip': ?ipv4Vip,
    };
  }

  factory ClusterSystemAddonsConfigIngress.fromMap(Map<String, dynamic> map) {
    return ClusterSystemAddonsConfigIngress(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv4Vip: (() { final guardedValue = map['ipv4Vip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
