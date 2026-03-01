// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Sql Server user on the Cloud SQL instance.
class SqlServerUserDetailsSqladminV1beta4 {
  /// If the user has been disabled
  final bool? disabled;
  /// The server roles for this user
  final List<String>? serverRoles;

  /// Creates a new [SqlServerUserDetailsSqladminV1beta4].
  /// [disabled] If the user has been disabled
  /// [serverRoles] The server roles for this user
  SqlServerUserDetailsSqladminV1beta4({
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
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      serverRoles: map['serverRoles'] == null ? null : (map['serverRoles'] as List).cast<String>(),
    );
  }
}

