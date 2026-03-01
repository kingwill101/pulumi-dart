// ignore_for_file: unused_element, unnecessary_cast


class LogAnalyticsConfiguration {
  final String? customerId;
  final String? sharedKey;

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
      customerId: map['customerId'] == null ? null : map['customerId'] as String,
      sharedKey: map['sharedKey'] == null ? null : map['sharedKey'] as String,
    );
  }
}

