// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceNotifications {
  /// A list of additional email addresses to notify when there are alerts in the managed domain.
  final pulumi.Input<List<String>>? additionalRecipients;

  /// Whether to notify members of the _AAD DC Administrators_ group when there are alerts in the managed domain.
  final pulumi.Input<bool>? notifyDcAdmins;

  /// Whether to notify all Global Administrators when there are alerts in the managed domain.
  final pulumi.Input<bool>? notifyGlobalAdmins;

  /// Creates a new [ServiceNotifications].
  /// [additionalRecipients] A list of additional email addresses to notify when there are alerts in the managed domain.
  /// [notifyDcAdmins] Whether to notify members of the _AAD DC Administrators_ group when there are alerts in the managed domain.
  /// [notifyGlobalAdmins] Whether to notify all Global Administrators when there are alerts in the managed domain.
  ServiceNotifications({
    this.additionalRecipients,
    this.notifyDcAdmins,
    this.notifyGlobalAdmins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalRecipients': ?additionalRecipients,
      'notifyDcAdmins': ?notifyDcAdmins,
      'notifyGlobalAdmins': ?notifyGlobalAdmins,
    };
  }

  factory ServiceNotifications.fromMap(Map<String, dynamic> map) {
    return ServiceNotifications(
      additionalRecipients: (() {
        final guardedValue = map['additionalRecipients'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      notifyDcAdmins: (() {
        final guardedValue = map['notifyDcAdmins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      notifyGlobalAdmins: (() {
        final guardedValue = map['notifyGlobalAdmins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
