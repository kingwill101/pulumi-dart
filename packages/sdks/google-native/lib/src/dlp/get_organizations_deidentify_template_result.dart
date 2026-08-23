// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_deidentify_config_response.dart';

/// Result data returned by getOrganizationsDeidentifyTemplate.
class GetOrganizationsDeidentifyTemplateResult {
  /// The creation timestamp of an inspectTemplate.
  final String createTime;
  /// The core content of the template.
  final GooglePrivacyDlpV2DeidentifyConfigResponse deidentifyConfig;
  /// Short description (max 256 chars).
  final String description;
  /// Display name (max 256 chars).
  final String displayName;
  /// The template name. The template will have one of the following formats: `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`
  final String name;
  /// The last update timestamp of an inspectTemplate.
  final String updateTime;

  /// Creates a new [GetOrganizationsDeidentifyTemplateResult].
  /// [createTime] The creation timestamp of an inspectTemplate.
  /// [deidentifyConfig] The core content of the template.
  /// [description] Short description (max 256 chars).
  /// [displayName] Display name (max 256 chars).
  /// [name] The template name. The template will have one of the following formats: `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`
  /// [updateTime] The last update timestamp of an inspectTemplate.
  const GetOrganizationsDeidentifyTemplateResult({
    required this.createTime,
    required this.deidentifyConfig,
    required this.description,
    required this.displayName,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deidentifyConfig': deidentifyConfig.toMap(),
      'description': description,
      'displayName': displayName,
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GetOrganizationsDeidentifyTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsDeidentifyTemplateResult(
      createTime: map['createTime'] as String,
      deidentifyConfig: GooglePrivacyDlpV2DeidentifyConfigResponse.fromMap((map['deidentifyConfig']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
