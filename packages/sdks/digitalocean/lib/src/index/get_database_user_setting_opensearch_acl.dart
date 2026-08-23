// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseUserSettingOpensearchAcl {
  final pulumi.Input<String> index;
  final pulumi.Input<String> permission;

  /// Creates a new [GetDatabaseUserSettingOpensearchAcl].
  /// [index] Required.
  /// [permission] Required.
  const GetDatabaseUserSettingOpensearchAcl({
    required this.index,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': index,
      'permission': permission,
    };
  }

  factory GetDatabaseUserSettingOpensearchAcl.fromMap(Map<String, dynamic> map) {
    return GetDatabaseUserSettingOpensearchAcl(
      index: pulumi.Input.fromValue(map['index'] as String),
      permission: pulumi.Input.fromValue(map['permission'] as String),
    );
  }
}
