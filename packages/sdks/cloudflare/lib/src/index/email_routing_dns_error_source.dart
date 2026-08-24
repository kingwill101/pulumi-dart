// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailRoutingDnsErrorSource {
  final pulumi.Input<String?>? pointer;

  /// Creates a new [EmailRoutingDnsErrorSource].
  /// [pointer] Optional.
  const EmailRoutingDnsErrorSource({
    this.pointer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pointer': ?pointer,
    };
  }

  factory EmailRoutingDnsErrorSource.fromMap(Map<String, dynamic> map) {
    return EmailRoutingDnsErrorSource(
      pointer: (() { final guardedValue = map['pointer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
