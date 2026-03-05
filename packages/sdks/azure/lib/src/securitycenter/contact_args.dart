// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_contact_contact_args_doc}
/// The set of arguments for Contact.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_contact_contact_args_doc}
class ContactArgs {
  /// Whether to send security alerts notifications to the security contact.
  final pulumi.Input<bool> alertNotifications;
  /// Whether to send security alerts notifications to subscription admins.
  final pulumi.Input<bool> alertsToAdmins;
  /// The email of the Security Center Contact.
  final pulumi.Input<String> email;
  /// The name of the Security Center Contact. Changing this forces a new Security Center Contact to be created.
  final pulumi.Input<String>? name;
  /// The phone number of the Security Center Contact.
  final pulumi.Input<String>? phone;

  /// Creates a new [ContactArgs].
  /// [alertNotifications] Whether to send security alerts notifications to the security contact.
  /// [alertsToAdmins] Whether to send security alerts notifications to subscription admins.
  /// [email] The email of the Security Center Contact.
  /// [name] The name of the Security Center Contact. Changing this forces a new Security Center Contact to be created.
  /// [phone] The phone number of the Security Center Contact.
  ContactArgs({
    required this.alertNotifications,
    required this.alertsToAdmins,
    required this.email,
    this.name,
    this.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertNotifications': alertNotifications,
      'alertsToAdmins': alertsToAdmins,
      'email': email,
      'name': ?name,
      'phone': ?phone,
    };
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      alertNotifications: pulumi.Input.fromValue(map['alertNotifications'] as bool),
      alertsToAdmins: pulumi.Input.fromValue(map['alertsToAdmins'] as bool),
      email: pulumi.Input.fromValue(map['email'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

