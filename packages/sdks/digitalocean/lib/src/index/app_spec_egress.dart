// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecEgress {
  /// The app egress type: `AUTOASSIGN`, `DEDICATED_IP`
  final pulumi.Input<String>? type;

  /// Creates a new [AppSpecEgress].
  /// [type] The app egress type: `AUTOASSIGN`, `DEDICATED_IP`
  AppSpecEgress({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory AppSpecEgress.fromMap(Map<String, dynamic> map) {
    return AppSpecEgress(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

