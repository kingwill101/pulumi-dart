// ignore_for_file: unused_element, unnecessary_cast


class ServiceBusAuthenticationResponse {
  /// Gets or sets the SAS key.
  final String? sasKey;
  /// Gets or sets the SAS key name.
  final String? sasKeyName;
  /// Gets or sets the authentication type.
  final String? type;

  /// Creates a new [ServiceBusAuthenticationResponse].
  /// [sasKey] Gets or sets the SAS key.
  /// [sasKeyName] Gets or sets the SAS key name.
  /// [type] Gets or sets the authentication type.
  ServiceBusAuthenticationResponse({
    this.sasKey,
    this.sasKeyName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasKey': ?sasKey,
      'sasKeyName': ?sasKeyName,
      'type': ?type,
    };
  }

  factory ServiceBusAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return ServiceBusAuthenticationResponse(
      sasKey: map['sasKey'] == null ? null : map['sasKey'] as String,
      sasKeyName: map['sasKeyName'] == null ? null : map['sasKeyName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

