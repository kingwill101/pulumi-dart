// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogAnalyticsConfiguration {
  final pulumi.Input<String>? customerId;
  final pulumi.Input<String>? sharedKey;

  /// Creates a new [LogAnalyticsConfiguration].
  /// [customerId] Optional.
  /// [sharedKey] Optional.
  LogAnalyticsConfiguration({
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
      customerId: map['customerId'] == null ? null : (map['customerId'] as String).input(),
      sharedKey: map['sharedKey'] == null ? null : (map['sharedKey'] as String).input(),
    );
  }
}

