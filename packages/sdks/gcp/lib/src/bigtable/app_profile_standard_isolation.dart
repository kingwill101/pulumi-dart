// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppProfileStandardIsolation {
  /// The priority of requests sent using this app profile.
  /// Possible values are: `PRIORITY_LOW`, `PRIORITY_MEDIUM`, `PRIORITY_HIGH`.
  final pulumi.Input<String> priority;

  /// Creates a new [AppProfileStandardIsolation].
  /// [priority] The priority of requests sent using this app profile.
  AppProfileStandardIsolation({required this.priority});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'priority': priority};
  }

  factory AppProfileStandardIsolation.fromMap(Map<String, dynamic> map) {
    return AppProfileStandardIsolation(
      priority: pulumi.Input.fromValue(map['priority'] as String),
    );
  }
}
