// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User specified templates and configs for how to deidentify structured, unstructures, and image files. User must provide either a unstructured deidentify template or at least one redact image config.
class GooglePrivacyDlpV2TransformationConfigResponse {
  /// De-identify template. If this template is specified, it will serve as the default de-identify template. This template cannot contain `record_transformations` since it can be used for unstructured content such as free-form text files. If this template is not set, a default `ReplaceWithInfoTypeConfig` will be used to de-identify unstructured content.
  final pulumi.Input<String> deidentifyTemplate;
  /// Image redact template. If this template is specified, it will serve as the de-identify template for images. If this template is not set, all findings in the image will be redacted with a black box.
  final pulumi.Input<String> imageRedactTemplate;
  /// Structured de-identify template. If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables. If this template is not set but the `deidentify_template` is set, then `deidentify_template` will also apply to the structured content. If neither template is set, a default `ReplaceWithInfoTypeConfig` will be used to de-identify structured content.
  final pulumi.Input<String> structuredDeidentifyTemplate;

  /// Creates a new [GooglePrivacyDlpV2TransformationConfigResponse].
  /// [deidentifyTemplate] De-identify template. If this template is specified, it will serve as the default de-identify template. This template cannot contain `record_transformations` since it can be used for unstructured content such as free-form text files. If this template is not set, a default `ReplaceWithInfoTypeConfig` will be used to de-identify unstructured content.
  /// [imageRedactTemplate] Image redact template. If this template is specified, it will serve as the de-identify template for images. If this template is not set, all findings in the image will be redacted with a black box.
  /// [structuredDeidentifyTemplate] Structured de-identify template. If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables. If this template is not set but the `deidentify_template` is set, then `deidentify_template` will also apply to the structured content. If neither template is set, a default `ReplaceWithInfoTypeConfig` will be used to de-identify structured content.
  GooglePrivacyDlpV2TransformationConfigResponse({
    required this.deidentifyTemplate,
    required this.imageRedactTemplate,
    required this.structuredDeidentifyTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyTemplate': deidentifyTemplate,
      'imageRedactTemplate': imageRedactTemplate,
      'structuredDeidentifyTemplate': structuredDeidentifyTemplate,
    };
  }

  factory GooglePrivacyDlpV2TransformationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TransformationConfigResponse(
      deidentifyTemplate: pulumi.Input.fromValue(map['deidentifyTemplate'] as String),
      imageRedactTemplate: pulumi.Input.fromValue(map['imageRedactTemplate'] as String),
      structuredDeidentifyTemplate: pulumi.Input.fromValue(map['structuredDeidentifyTemplate'] as String),
    );
  }
}

