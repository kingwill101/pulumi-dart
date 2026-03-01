// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_user_setting_acl.dart';
import 'database_user_setting_opensearch_acl.dart';

class DatabaseUserSetting {
  /// A set of ACLs (Access Control Lists) specifying permission on topics with a Kafka cluster. The properties of an individual ACL are described below:
  ///
  /// An individual ACL includes the following:
  final List<DatabaseUserSettingAcl>? acls;
  final List<DatabaseUserSettingOpensearchAcl>? opensearchAcls;

  /// Creates a new [DatabaseUserSetting].
  /// [acls] A set of ACLs (Access Control Lists) specifying permission on topics with a Kafka cluster. The properties of an individual ACL are described below:
  /// [opensearchAcls] Optional.
  DatabaseUserSetting({
    this.acls,
    this.opensearchAcls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': ?acls == null ? null : pulumi.Input.encodeList<DatabaseUserSettingAcl, Map<String, dynamic>>(acls!, (value) => value.toMap()),
      'opensearchAcls': ?opensearchAcls == null ? null : pulumi.Input.encodeList<DatabaseUserSettingOpensearchAcl, Map<String, dynamic>>(opensearchAcls!, (value) => value.toMap()),
    };
  }

  factory DatabaseUserSetting.fromMap(Map<String, dynamic> map) {
    return DatabaseUserSetting(
      acls: map['acls'] == null ? null : pulumi.Input.decodeList<DatabaseUserSettingAcl>(map['acls'], (value) => DatabaseUserSettingAcl.fromMap((value as Map).cast<String, dynamic>())),
      opensearchAcls: map['opensearchAcls'] == null ? null : pulumi.Input.decodeList<DatabaseUserSettingOpensearchAcl>(map['opensearchAcls'], (value) => DatabaseUserSettingOpensearchAcl.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

