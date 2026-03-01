// ignore_for_file: unused_element, unnecessary_cast


class LogAnalyticsConfigurationResponse {
  final String? customerId;

  /// Creates a new [LogAnalyticsConfigurationResponse].
  /// [customerId] Optional.
  LogAnalyticsConfigurationResponse({
    this.customerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerId': ?customerId,
    };
  }

  factory LogAnalyticsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsConfigurationResponse(
      customerId: map['customerId'] == null ? null : map['customerId'] as String,
    );
  }
}

