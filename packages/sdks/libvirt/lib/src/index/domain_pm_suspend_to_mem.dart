// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainPmSuspendToMem {
  /// Specifies if the suspend to disk feature is enabled.
  final pulumi.Input<String> enabled;

  /// Creates a new [DomainPmSuspendToMem].
  /// [enabled] Specifies if the suspend to disk feature is enabled.
  DomainPmSuspendToMem({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory DomainPmSuspendToMem.fromMap(Map<String, dynamic> map) {
    return DomainPmSuspendToMem(
      enabled: pulumi.Input.fromValue(map['enabled'] as String),
    );
  }
}
