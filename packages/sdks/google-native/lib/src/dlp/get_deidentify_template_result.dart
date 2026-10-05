// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_deidentify_config_response.dart';

/// Result data returned by getDeidentifyTemplate.
class GetDeidentifyTemplateResult {
  /// The creation timestamp of an inspectTemplate.
  final String? createTime;
  /// The core content of the template.
  final GooglePrivacyDlpV2DeidentifyConfigResponse? deidentifyConfig;
  /// Short description (max 256 chars).
  final String? description;
  /// Display name (max 256 chars).
  final String? displayName;
  /// The template name. The template will have one of the following formats: `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`
  final String? name;
  /// The last update timestamp of an inspectTemplate.
  final String? updateTime;

  /// Creates a new [GetDeidentifyTemplateResult].
  /// [createTime] The creation timestamp of an inspectTemplate.
  /// [deidentifyConfig] The core content of the template.
  /// [description] Short description (max 256 chars).
  /// [displayName] Display name (max 256 chars).
  /// [name] The template name. The template will have one of the following formats: `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`
  /// [updateTime] The last update timestamp of an inspectTemplate.
  const GetDeidentifyTemplateResult({
    this.createTime,
    this.deidentifyConfig,
    this.description,
    this.displayName,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deidentifyConfig': ?deidentifyConfig?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetDeidentifyTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetDeidentifyTemplateResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deidentifyConfig: (() { final guardedValue = map['deidentifyConfig']; if (guardedValue == null) return null; return GooglePrivacyDlpV2DeidentifyConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
