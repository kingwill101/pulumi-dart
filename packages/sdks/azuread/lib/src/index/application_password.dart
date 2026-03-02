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
  ApplicationPassword({
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
      displayName: (map['displayName'] as String).input(),
      endDate: map['endDate'] == null ? null : (map['endDate'] as String).input(),
      keyId: map['keyId'] == null ? null : (map['keyId'] as String).input(),
      startDate: map['startDate'] == null ? null : (map['startDate'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

