// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_user_setting_acl.dart';
import 'database_user_setting_opensearch_acl.dart';

class DatabaseUserSetting {
  /// A set of ACLs (Access Control Lists) specifying permission on topics with a Kafka cluster. The properties of an individual ACL are described below:
  ///
  /// An individual ACL includes the following:
  final pulumi.Input<List<DatabaseUserSettingAcl>>? acls;
  final pulumi.Input<List<DatabaseUserSettingOpensearchAcl>>? opensearchAcls;

  /// Creates a new [DatabaseUserSetting].
  /// [acls] A set of ACLs (Access Control Lists) specifying permission on topics with a Kafka cluster. The properties of an individual ACL are described below:
  /// [opensearchAcls] Optional.
  const DatabaseUserSetting({
    this.acls,
    this.opensearchAcls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': ?pulumi.Input.mapOptionalInputValue<List<DatabaseUserSettingAcl>, List<Map<String, dynamic>>>(acls, (value) => pulumi.Input.encodeList<DatabaseUserSettingAcl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'opensearchAcls': ?pulumi.Input.mapOptionalInputValue<List<DatabaseUserSettingOpensearchAcl>, List<Map<String, dynamic>>>(opensearchAcls, (value) => pulumi.Input.encodeList<DatabaseUserSettingOpensearchAcl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatabaseUserSetting.fromMap(Map<String, dynamic> map) {
    return DatabaseUserSetting(
      acls: (() { final guardedValue = map['acls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseUserSettingAcl>(guardedValue, (value) => DatabaseUserSettingAcl.fromMap((value as Map).cast<String, dynamic>()))); })(),
      opensearchAcls: (() { final guardedValue = map['opensearchAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseUserSettingOpensearchAcl>(guardedValue, (value) => DatabaseUserSettingOpensearchAcl.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
