// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_inspect_config_response.dart';

/// Result data returned by getOrganizationInspectTemplate.
class GetOrganizationInspectTemplateResult {
  /// The creation timestamp of an inspectTemplate.
  final String? createTime;
  /// Short description (max 256 chars).
  final String? description;
  /// Display name (max 256 chars).
  final String? displayName;
  /// The core content of the template. Configuration of the scanning process.
  final GooglePrivacyDlpV2InspectConfigResponse? inspectConfig;
  /// The template name. The template will have one of the following formats: `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`;
  final String? name;
  /// The last update timestamp of an inspectTemplate.
  final String? updateTime;

  /// Creates a new [GetOrganizationInspectTemplateResult].
  /// [createTime] The creation timestamp of an inspectTemplate.
  /// [description] Short description (max 256 chars).
  /// [displayName] Display name (max 256 chars).
  /// [inspectConfig] The core content of the template. Configuration of the scanning process.
  /// [name] The template name. The template will have one of the following formats: `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`;
  /// [updateTime] The last update timestamp of an inspectTemplate.
  const GetOrganizationInspectTemplateResult({
    this.createTime,
    this.description,
    this.displayName,
    this.inspectConfig,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'inspectConfig': ?inspectConfig?.toMap(),
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetOrganizationInspectTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationInspectTemplateResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inspectConfig: (() { final guardedValue = map['inspectConfig']; if (guardedValue == null) return null; return GooglePrivacyDlpV2InspectConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
