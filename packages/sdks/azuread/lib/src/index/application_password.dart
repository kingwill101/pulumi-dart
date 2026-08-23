// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationPassword {
  /// A display name for the password. Changing this field forces a new resource to be created.
  final pulumi.Input<String> displayName;
  /// The end date until which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  final pulumi.Input<String>? endDate;
  /// (Required) The unique key ID for the generated password.
  final pulumi.Input<String>? keyId;
  /// The start date from which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date is used.  Changing this field forces a new resource to be created.
  final pulumi.Input<String>? startDate;
  /// (Required) The generated password for the application.
  final pulumi.Input<String>? value;

  /// Creates a new [ApplicationPassword].
  /// [displayName] A display name for the password. Changing this field forces a new resource to be created.
  /// [endDate] The end date until which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  /// [keyId] (Required) The unique key ID for the generated password.
  /// [startDate] The start date from which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date is used.  Changing this field forces a new resource to be created.
  /// [value] (Required) The generated password for the application.
  const ApplicationPassword({
    required this.displayName,
    this.endDate,
    this.keyId,
    this.startDate,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'endDate': ?endDate,
      'keyId': ?keyId,
      'startDate': ?startDate,
      'value': ?value,
    };
  }

  factory ApplicationPassword.fromMap(Map<String, dynamic> map) {
    return ApplicationPassword(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
