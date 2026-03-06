// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbSystemPropertiesTimeZone {
  /// IANA Time Zone Database time zone. For example "America/New_York".
  final pulumi.Input<String>? id;

  /// Creates a new [DbSystemPropertiesTimeZone].
  /// [id] IANA Time Zone Database time zone. For example "America/New_York".
  const DbSystemPropertiesTimeZone({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory DbSystemPropertiesTimeZone.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesTimeZone(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

