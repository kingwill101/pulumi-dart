// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for a service.
class ServiceConfig {
  /// Optional. Domain name of the service. Example: console.cloud.google
  final String? domain;

  /// Creates a new [ServiceConfig].
  /// [domain] Optional. Domain name of the service. Example: console.cloud.google
  ServiceConfig({
    this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
    };
  }

  factory ServiceConfig.fromMap(Map<String, dynamic> map) {
    return ServiceConfig(
      domain: map['domain'] == null ? null : map['domain'] as String,
    );
  }
}

