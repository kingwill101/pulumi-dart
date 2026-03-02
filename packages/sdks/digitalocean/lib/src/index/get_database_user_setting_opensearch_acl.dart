// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseUserSettingOpensearchAcl {
  final pulumi.Input<String> index;
  final pulumi.Input<String> permission;

  /// Creates a new [GetDatabaseUserSettingOpensearchAcl].
  /// [index] Required.
  /// [permission] Required.
  GetDatabaseUserSettingOpensearchAcl({
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
      index: (map['index'] as String).input(),
      permission: (map['permission'] as String).input(),
    );
  }
}

