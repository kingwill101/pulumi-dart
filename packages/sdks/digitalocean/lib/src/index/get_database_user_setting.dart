// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_user_setting_acl.dart';
import 'get_database_user_setting_opensearch_acl.dart';

class GetDatabaseUserSetting {
  final pulumi.Input<List<GetDatabaseUserSettingAcl>>? acls;
  final pulumi.Input<List<GetDatabaseUserSettingOpensearchAcl>>? opensearchAcls;

  /// Creates a new [GetDatabaseUserSetting].
  /// [acls] Optional.
  /// [opensearchAcls] Optional.
  GetDatabaseUserSetting({
    this.acls,
    this.opensearchAcls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': ?pulumi.Input.mapOptionalInputValue<List<GetDatabaseUserSettingAcl>, List<Map<String, dynamic>>>(acls, (value) => pulumi.Input.encodeList<GetDatabaseUserSettingAcl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'opensearchAcls': ?pulumi.Input.mapOptionalInputValue<List<GetDatabaseUserSettingOpensearchAcl>, List<Map<String, dynamic>>>(opensearchAcls, (value) => pulumi.Input.encodeList<GetDatabaseUserSettingOpensearchAcl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDatabaseUserSetting.fromMap(Map<String, dynamic> map) {
    return GetDatabaseUserSetting(
      acls: map['acls'] == null ? null : (pulumi.Input.decodeList<GetDatabaseUserSettingAcl>(map['acls'], (value) => GetDatabaseUserSettingAcl.fromMap((value as Map).cast<String, dynamic>()))).input(),
      opensearchAcls: map['opensearchAcls'] == null ? null : (pulumi.Input.decodeList<GetDatabaseUserSettingOpensearchAcl>(map['opensearchAcls'], (value) => GetDatabaseUserSettingOpensearchAcl.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

