// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_deidentify_config_response.dart';

/// DeidentifyTemplates contains instructions on how to de-identify content. See https://cloud.google.com/dlp/docs/concepts-templates to learn more.
class GooglePrivacyDlpV2DeidentifyTemplateResponse {
  /// The creation timestamp of an inspectTemplate.
  final pulumi.Input<String> createTime;
  /// The core content of the template.
  final pulumi.Input<GooglePrivacyDlpV2DeidentifyConfigResponse> deidentifyConfig;
  /// Short description (max 256 chars).
  final pulumi.Input<String> description;
  /// Display name (max 256 chars).
  final pulumi.Input<String> displayName;
  /// The template name. The template will have one of the following formats: `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`
  final pulumi.Input<String> name;
  /// The last update timestamp of an inspectTemplate.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GooglePrivacyDlpV2DeidentifyTemplateResponse].
  /// [createTime] The creation timestamp of an inspectTemplate.
  /// [deidentifyConfig] The core content of the template.
  /// [description] Short description (max 256 chars).
  /// [displayName] Display name (max 256 chars).
  /// [name] The template name. The template will have one of the following formats: `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`
  /// [updateTime] The last update timestamp of an inspectTemplate.
  const GooglePrivacyDlpV2DeidentifyTemplateResponse({
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
      'deidentifyConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DeidentifyConfigResponse, Map<String, dynamic>>(deidentifyConfig, (value) => value.toMap()),
      'description': description,
      'displayName': displayName,
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GooglePrivacyDlpV2DeidentifyTemplateResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DeidentifyTemplateResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deidentifyConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2DeidentifyConfigResponse.fromMap((map['deidentifyConfig']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

