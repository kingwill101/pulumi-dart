// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationScope {
  /// Scope type.
  final pulumi.Input<String?>? type;

  /// Creates a new [ApplicationScope].
  /// [type] Scope type.
  const ApplicationScope({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ApplicationScope.fromMap(Map<String, dynamic> map) {
    return ApplicationScope(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
