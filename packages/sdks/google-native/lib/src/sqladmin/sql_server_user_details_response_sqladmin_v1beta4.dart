// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Sql Server user on the Cloud SQL instance.
class SqlServerUserDetailsResponseSqladminV1beta4 {
  /// If the user has been disabled
  final pulumi.Input<bool> disabled;
  /// The server roles for this user
  final pulumi.Input<List<String>> serverRoles;

  /// Creates a new [SqlServerUserDetailsResponseSqladminV1beta4].
  /// [disabled] If the user has been disabled
  /// [serverRoles] The server roles for this user
  const SqlServerUserDetailsResponseSqladminV1beta4({
    required this.disabled,
    required this.serverRoles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'serverRoles': serverRoles,
    };
  }

  factory SqlServerUserDetailsResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SqlServerUserDetailsResponseSqladminV1beta4(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      serverRoles: pulumi.Input.fromValue((map['serverRoles'] as List).cast<String>()),
    );
  }
}

