// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserSqlServerUserDetail {
  /// If the user has been disabled.
  final pulumi.Input<bool>? disabled;
  /// The server roles for this user in the database.
  final pulumi.Input<List<String>>? serverRoles;

  /// Creates a new [UserSqlServerUserDetail].
  /// [disabled] If the user has been disabled.
  /// [serverRoles] The server roles for this user in the database.
  const UserSqlServerUserDetail({
    this.disabled,
    this.serverRoles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'serverRoles': ?serverRoles,
    };
  }

  factory UserSqlServerUserDetail.fromMap(Map<String, dynamic> map) {
    return UserSqlServerUserDetail(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverRoles: (() { final guardedValue = map['serverRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
