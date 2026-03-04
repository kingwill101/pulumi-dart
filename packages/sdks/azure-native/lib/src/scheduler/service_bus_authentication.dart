// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_bus_authentication_type.dart';

class ServiceBusAuthentication {
  /// Gets or sets the SAS key.
  final pulumi.Input<String>? sasKey;

  /// Gets or sets the SAS key name.
  final pulumi.Input<String>? sasKeyName;

  /// Gets or sets the authentication type.
  final pulumi.Input<ServiceBusAuthenticationType>? type;

  /// Creates a new [ServiceBusAuthentication].
  /// [sasKey] Gets or sets the SAS key.
  /// [sasKeyName] Gets or sets the SAS key name.
  /// [type] Gets or sets the authentication type.
  ServiceBusAuthentication({this.sasKey, this.sasKeyName, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasKey': ?sasKey,
      'sasKeyName': ?sasKeyName,
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceBusAuthenticationType,
            String
          >(type, (value) => value.wireValue),
    };
  }

  factory ServiceBusAuthentication.fromMap(Map<String, dynamic> map) {
    return ServiceBusAuthentication(
      sasKey: (() {
        final guardedValue = map['sasKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sasKeyName: (() {
        final guardedValue = map['sasKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceBusAuthenticationType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
