// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogAnalyticsConfiguration {
  final pulumi.Input<String>? customerId;
  final pulumi.Input<String>? sharedKey;

  /// Creates a new [LogAnalyticsConfiguration].
  /// [customerId] Optional.
  /// [sharedKey] Optional.
  const LogAnalyticsConfiguration({
    this.customerId,
    this.sharedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerId': ?customerId,
      'sharedKey': ?sharedKey,
    };
  }

  factory LogAnalyticsConfiguration.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsConfiguration(
      customerId: (() { final guardedValue = map['customerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

