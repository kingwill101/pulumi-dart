// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Contact resources.
class ContactState {
  /// Whether to send security alerts notifications to the security contact.
  final pulumi.Input<bool>? alertNotifications;
  /// Whether to send security alerts notifications to subscription admins.
  final pulumi.Input<bool>? alertsToAdmins;
  /// The email of the Security Center Contact.
  final pulumi.Input<String>? email;
  /// The name of the Security Center Contact. Changing this forces a new Security Center Contact to be created.
  final pulumi.Input<String>? name;
  /// The phone number of the Security Center Contact.
  final pulumi.Input<String>? phone;

  /// Creates a new [ContactState].
  /// [alertNotifications] Whether to send security alerts notifications to the security contact.
  /// [alertsToAdmins] Whether to send security alerts notifications to subscription admins.
  /// [email] The email of the Security Center Contact.
  /// [name] The name of the Security Center Contact. Changing this forces a new Security Center Contact to be created.
  /// [phone] The phone number of the Security Center Contact.
  ContactState({
    pulumi.Output<bool>? alertNotifications,
    pulumi.Output<bool>? alertsToAdmins,
    pulumi.Output<String>? email,
    pulumi.Output<String>? name,
    pulumi.Output<String>? phone,
  }) :
      alertNotifications = pulumi.Input.asOptionalInput<bool>(alertNotifications),
      alertsToAdmins = pulumi.Input.asOptionalInput<bool>(alertsToAdmins),
      email = pulumi.Input.asOptionalInput<String>(email),
      name = pulumi.Input.asOptionalInput<String>(name),
      phone = pulumi.Input.asOptionalInput<String>(phone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertNotifications': ?alertNotifications,
      'alertsToAdmins': ?alertsToAdmins,
      'email': ?email,
      'name': ?name,
      'phone': ?phone,
    };
  }

  factory ContactState.fromMap(Map<String, dynamic> map) {
    return ContactState(
      alertNotifications: map['alertNotifications'] == null ? null : pulumi.Output.create<bool>(map['alertNotifications'] as bool),
      alertsToAdmins: map['alertsToAdmins'] == null ? null : pulumi.Output.create<bool>(map['alertsToAdmins'] as bool),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      phone: map['phone'] == null ? null : pulumi.Output.create<String>(map['phone'] as String),
    );
  }
}

