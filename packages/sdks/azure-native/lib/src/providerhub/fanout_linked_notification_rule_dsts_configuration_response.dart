// ignore_for_file: unused_element, unnecessary_cast


/// The dsts configuration.
class FanoutLinkedNotificationRuleDstsConfigurationResponse {
  /// This is a URI property.
  final String? serviceDnsName;
  /// The service name.
  final String serviceName;

  /// Creates a new [FanoutLinkedNotificationRuleDstsConfigurationResponse].
  /// [serviceDnsName] This is a URI property.
  /// [serviceName] The service name.
  FanoutLinkedNotificationRuleDstsConfigurationResponse({
    this.serviceDnsName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceDnsName': ?serviceDnsName,
      'serviceName': serviceName,
    };
  }

  factory FanoutLinkedNotificationRuleDstsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FanoutLinkedNotificationRuleDstsConfigurationResponse(
      serviceDnsName: map['serviceDnsName'] == null ? null : map['serviceDnsName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

