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
  PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig({
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
      deidentifyTemplate: map['deidentifyTemplate'] == null ? null : (map['deidentifyTemplate']! as String).input(),
      imageRedactTemplate: map['imageRedactTemplate'] == null ? null : (map['imageRedactTemplate']! as String).input(),
      structuredDeidentifyTemplate: map['structuredDeidentifyTemplate'] == null ? null : (map['structuredDeidentifyTemplate']! as String).input(),
    );
  }
}

