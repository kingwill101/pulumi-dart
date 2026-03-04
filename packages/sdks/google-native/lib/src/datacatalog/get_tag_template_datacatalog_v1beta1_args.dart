// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_get_tag_template_datacatalog_v1beta1_args_doc}
/// Arguments for getTagTemplate.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_get_tag_template_datacatalog_v1beta1_args_doc}
class GetTagTemplateDatacatalogV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tagTemplateId;

  /// Creates a new [GetTagTemplateDatacatalogV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [tagTemplateId] Required.
  GetTagTemplateDatacatalogV1beta1Args({
    required this.location,
    this.project,
    required this.tagTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tagTemplateId': tagTemplateId,
    };
  }

  factory GetTagTemplateDatacatalogV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTagTemplateDatacatalogV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagTemplateId: pulumi.Input.fromValue(map['tagTemplateId'] as String),
    );
  }
}
