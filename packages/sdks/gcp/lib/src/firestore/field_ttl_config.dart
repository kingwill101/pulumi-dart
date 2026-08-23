// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FieldTtlConfig {
  /// The offset, relative to the timestamp value from the field, used to determine the document's expiration time. Formatted as the number of seconds followed by 's'. For example, "60s" represents an offset of one minute. The number of seconds must be between 1 and 2147483647 inclusive. To configure no offset, omit this field.
  final pulumi.Input<String>? expirationOffset;
  /// (Output)
  /// The state of TTL (time-to-live) configuration for documents that have this Field set.
  final pulumi.Input<String>? state;

  /// Creates a new [FieldTtlConfig].
  /// [expirationOffset] The offset, relative to the timestamp value from the field, used to determine the document's expiration time. Formatted as the number of seconds followed by 's'. For example, "60s" represents an offset of one minute. The number of seconds must be between 1 and 2147483647 inclusive. To configure no offset, omit this field.
  /// [state] (Output)
  const FieldTtlConfig({
    this.expirationOffset,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationOffset': ?expirationOffset,
      'state': ?state,
    };
  }

  factory FieldTtlConfig.fromMap(Map<String, dynamic> map) {
    return FieldTtlConfig(
      expirationOffset: (() { final guardedValue = map['expirationOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
