// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorUser {
  /// Email of the user used by Datadog for contacting them if needed. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String> email;
  /// The name which should be used for this user_info. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// Phone number of the user used by Datadog for contacting them if needed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? phoneNumber;

  /// Creates a new [MonitorUser].
  /// [email] Email of the user used by Datadog for contacting them if needed. Changing this forces a new Datadog Monitor to be created.
  /// [name] The name which should be used for this user_info. Changing this forces a new resource to be created.
  /// [phoneNumber] Phone number of the user used by Datadog for contacting them if needed. Changing this forces a new resource to be created.
  MonitorUser({
    required this.email,
    required this.name,
    this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'phoneNumber': ?phoneNumber,
    };
  }

  factory MonitorUser.fromMap(Map<String, dynamic> map) {
    return MonitorUser(
      email: (map['email'] as String).input(),
      name: (map['name'] as String).input(),
      phoneNumber: map['phoneNumber'] == null ? null : (map['phoneNumber']! as String).input(),
    );
  }
}

