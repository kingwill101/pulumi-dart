// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateFilterConfigSdpSettingsAdvancedConfig {
  /// Optional Sensitive Data Protection Deidentify template resource name.
  /// If provided then DeidentifyContent action is performed during Sanitization
  /// using this template and inspect template. The De-identified data will
  /// be returned in SdpDeidentifyResult.
  /// Note that all info-types present in the deidentify template must be present
  /// in inspect template.
  /// e.g.
  /// `projects/{project}/locations/{location}/deidentifyTemplates/{deidentify_template}`
  final pulumi.Input<String>? deidentifyTemplate;

  /// Sensitive Data Protection inspect template resource name
  /// If only inspect template is provided (de-identify template not provided),
  /// then Sensitive Data Protection InspectContent action is performed during
  /// Sanitization. All Sensitive Data Protection findings identified during
  /// inspection will be returned as SdpFinding in SdpInsepctionResult.
  /// e.g:-
  /// `projects/{project}/locations/{location}/inspectTemplates/{inspect_template}`
  final pulumi.Input<String>? inspectTemplate;

  /// Creates a new [TemplateFilterConfigSdpSettingsAdvancedConfig].
  /// [deidentifyTemplate] Optional Sensitive Data Protection Deidentify template resource name.
  /// [inspectTemplate] Sensitive Data Protection inspect template resource name
  TemplateFilterConfigSdpSettingsAdvancedConfig({
    this.deidentifyTemplate,
    this.inspectTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyTemplate': ?deidentifyTemplate,
      'inspectTemplate': ?inspectTemplate,
    };
  }

  factory TemplateFilterConfigSdpSettingsAdvancedConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return TemplateFilterConfigSdpSettingsAdvancedConfig(
      deidentifyTemplate: (() {
        final guardedValue = map['deidentifyTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inspectTemplate: (() {
        final guardedValue = map['inspectTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
