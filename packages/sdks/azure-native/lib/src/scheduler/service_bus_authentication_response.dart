// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceBusAuthenticationResponse {
  /// Gets or sets the SAS key.
  final pulumi.Input<String>? sasKey;
  /// Gets or sets the SAS key name.
  final pulumi.Input<String>? sasKeyName;
  /// Gets or sets the authentication type.
  final pulumi.Input<String>? type;

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
      sasKey: map['sasKey'] == null ? null : (map['sasKey']! as String).input(),
      sasKeyName: map['sasKeyName'] == null ? null : (map['sasKeyName']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

