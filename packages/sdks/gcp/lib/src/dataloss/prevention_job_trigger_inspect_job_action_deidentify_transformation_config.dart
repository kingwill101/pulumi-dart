// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig {
  /// If this template is specified, it will serve as the default de-identify template.
  final pulumi.Input<String>? deidentifyTemplate;
  /// If this template is specified, it will serve as the de-identify template for images.
  final pulumi.Input<String>? imageRedactTemplate;
  /// If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables.
  final pulumi.Input<String>? structuredDeidentifyTemplate;

  /// Creates a new [PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig].
  /// [deidentifyTemplate] If this template is specified, it will serve as the default de-identify template.
  /// [imageRedactTemplate] If this template is specified, it will serve as the de-identify template for images.
  /// [structuredDeidentifyTemplate] If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables.
  const PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig({
    this.deidentifyTemplate,
    this.imageRedactTemplate,
    this.structuredDeidentifyTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyTemplate': ?deidentifyTemplate,
      'imageRedactTemplate': ?imageRedactTemplate,
      'structuredDeidentifyTemplate': ?structuredDeidentifyTemplate,
    };
  }

  factory PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig(
      deidentifyTemplate: (() { final guardedValue = map['deidentifyTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageRedactTemplate: (() { final guardedValue = map['imageRedactTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      structuredDeidentifyTemplate: (() { final guardedValue = map['structuredDeidentifyTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
