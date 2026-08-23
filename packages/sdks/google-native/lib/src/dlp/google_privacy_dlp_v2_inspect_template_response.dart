// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_inspect_config_response.dart';

/// The inspectTemplate contains a configuration (set of types of sensitive data to be detected) to be used anywhere you otherwise would normally specify InspectConfig. See https://cloud.google.com/dlp/docs/concepts-templates to learn more.
class GooglePrivacyDlpV2InspectTemplateResponse {
  /// The creation timestamp of an inspectTemplate.
  final pulumi.Input<String> createTime;
  /// Short description (max 256 chars).
  final pulumi.Input<String> description;
  /// Display name (max 256 chars).
  final pulumi.Input<String> displayName;
  /// The core content of the template. Configuration of the scanning process.
  final pulumi.Input<GooglePrivacyDlpV2InspectConfigResponse> inspectConfig;
  /// The template name. The template will have one of the following formats: `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`;
  final pulumi.Input<String> name;
  /// The last update timestamp of an inspectTemplate.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GooglePrivacyDlpV2InspectTemplateResponse].
  /// [createTime] The creation timestamp of an inspectTemplate.
  /// [description] Short description (max 256 chars).
  /// [displayName] Display name (max 256 chars).
  /// [inspectConfig] The core content of the template. Configuration of the scanning process.
  /// [name] The template name. The template will have one of the following formats: `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`;
  /// [updateTime] The last update timestamp of an inspectTemplate.
  const GooglePrivacyDlpV2InspectTemplateResponse({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.inspectConfig,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'inspectConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2InspectConfigResponse, Map<String, dynamic>>(inspectConfig, (value) => value.toMap()),
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GooglePrivacyDlpV2InspectTemplateResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectTemplateResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      inspectConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2InspectConfigResponse.fromMap((map['inspectConfig']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
