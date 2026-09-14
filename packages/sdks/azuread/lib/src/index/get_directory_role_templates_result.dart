// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_role_templates_role_template.dart';

/// Result data returned by getDirectoryRoleTemplates.
class GetDirectoryRoleTemplatesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The object IDs of the role templates.
  final List<String>? objectIds;
  /// A list of role templates. Each `roleTemplate` object provides the attributes documented below.
  final List<GetDirectoryRoleTemplatesRoleTemplate>? roleTemplates;

  /// Creates a new [GetDirectoryRoleTemplatesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectIds] The object IDs of the role templates.
  /// [roleTemplates] A list of role templates. Each `roleTemplate` object provides the attributes documented below.
  const GetDirectoryRoleTemplatesResult({
    this.id,
    this.objectIds,
    this.roleTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'objectIds': ?objectIds,
      'roleTemplates': ?(() { final guardedValue = roleTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectoryRoleTemplatesRoleTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDirectoryRoleTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryRoleTemplatesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectIds: (() { final guardedValue = map['objectIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      roleTemplates: (() { final guardedValue = map['roleTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectoryRoleTemplatesRoleTemplate>(guardedValue, (value) => GetDirectoryRoleTemplatesRoleTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
