// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Sql Server user on the Cloud SQL instance.
class SqlServerUserDetails {
  /// If the user has been disabled
  final pulumi.Input<bool>? disabled;
  /// The server roles for this user
  final pulumi.Input<List<String>>? serverRoles;

  /// Creates a new [SqlServerUserDetails].
  /// [disabled] If the user has been disabled
  /// [serverRoles] The server roles for this user
  SqlServerUserDetails({
    this.disabled,
    this.serverRoles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'serverRoles': ?serverRoles,
    };
  }

  factory SqlServerUserDetails.fromMap(Map<String, dynamic> map) {
    return SqlServerUserDetails(
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      serverRoles: map['serverRoles'] == null ? null : ((map['serverRoles']! as List).cast<String>()).input(),
    );
  }
}

