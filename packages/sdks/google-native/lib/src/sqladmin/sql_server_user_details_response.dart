// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Sql Server user on the Cloud SQL instance.
class SqlServerUserDetailsResponse {
  /// If the user has been disabled
  final pulumi.Input<bool> disabled;
  /// The server roles for this user
  final pulumi.Input<List<String>> serverRoles;

  /// Creates a new [SqlServerUserDetailsResponse].
  /// [disabled] If the user has been disabled
  /// [serverRoles] The server roles for this user
  const SqlServerUserDetailsResponse({
    required this.disabled,
    required this.serverRoles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'serverRoles': serverRoles,
    };
  }

  factory SqlServerUserDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerUserDetailsResponse(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      serverRoles: pulumi.Input.fromValue((map['serverRoles'] as List).cast<String>()),
    );
  }
}
