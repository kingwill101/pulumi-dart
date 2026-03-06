// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Sql Server user on the Cloud SQL instance.
class SqlServerUserDetailsSqladminV1beta4 {
  /// If the user has been disabled
  final pulumi.Input<bool>? disabled;
  /// The server roles for this user
  final pulumi.Input<List<String>>? serverRoles;

  /// Creates a new [SqlServerUserDetailsSqladminV1beta4].
  /// [disabled] If the user has been disabled
  /// [serverRoles] The server roles for this user
  const SqlServerUserDetailsSqladminV1beta4({
    this.disabled,
    this.serverRoles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'serverRoles': ?serverRoles,
    };
  }

  factory SqlServerUserDetailsSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SqlServerUserDetailsSqladminV1beta4(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverRoles: (() { final guardedValue = map['serverRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

