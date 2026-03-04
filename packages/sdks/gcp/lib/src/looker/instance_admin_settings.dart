// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAdminSettings {
  final pulumi.Input<List<String>>? allowedEmailDomains;

  /// Creates a new [InstanceAdminSettings].
  /// [allowedEmailDomains] Optional.
  InstanceAdminSettings({this.allowedEmailDomains});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowedEmailDomains': ?allowedEmailDomains};
  }

  factory InstanceAdminSettings.fromMap(Map<String, dynamic> map) {
    return InstanceAdminSettings(
      allowedEmailDomains: (() {
        final guardedValue = map['allowedEmailDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
