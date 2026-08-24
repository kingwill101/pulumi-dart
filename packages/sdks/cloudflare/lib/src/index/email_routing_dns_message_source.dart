// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailRoutingDnsMessageSource {
  final pulumi.Input<String?>? pointer;

  /// Creates a new [EmailRoutingDnsMessageSource].
  /// [pointer] Optional.
  const EmailRoutingDnsMessageSource({
    this.pointer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pointer': ?pointer,
    };
  }

  factory EmailRoutingDnsMessageSource.fromMap(Map<String, dynamic> map) {
    return EmailRoutingDnsMessageSource(
      pointer: (() { final guardedValue = map['pointer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
