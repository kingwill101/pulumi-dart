// ignore_for_file: unused_element, unnecessary_cast

import 'service_bus_authentication_type.dart';

class ServiceBusAuthentication {
  /// Gets or sets the SAS key.
  final String? sasKey;
  /// Gets or sets the SAS key name.
  final String? sasKeyName;
  /// Gets or sets the authentication type.
  final ServiceBusAuthenticationType? type;

  /// Creates a new [ServiceBusAuthentication].
  /// [sasKey] Gets or sets the SAS key.
  /// [sasKeyName] Gets or sets the SAS key name.
  /// [type] Gets or sets the authentication type.
  ServiceBusAuthentication({
    this.sasKey,
    this.sasKeyName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasKey': ?sasKey,
      'sasKeyName': ?sasKeyName,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory ServiceBusAuthentication.fromMap(Map<String, dynamic> map) {
    return ServiceBusAuthentication(
      sasKey: map['sasKey'] == null ? null : map['sasKey'] as String,
      sasKeyName: map['sasKeyName'] == null ? null : map['sasKeyName'] as String,
      type: map['type'] == null ? null : ServiceBusAuthenticationType.fromValue(map['type'] as String),
    );
  }
}

