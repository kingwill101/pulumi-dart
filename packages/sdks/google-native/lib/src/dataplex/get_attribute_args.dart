// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_attribute_args_doc}
/// Arguments for getAttribute.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_attribute_args_doc}
class GetAttributeArgs {
  final pulumi.Input<String> attributeId;
  final pulumi.Input<String> dataTaxonomyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAttributeArgs].
  /// [attributeId] Required.
  /// [dataTaxonomyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAttributeArgs({
    required pulumi.Output<String> attributeId,
    required pulumi.Output<String> dataTaxonomyId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      attributeId = pulumi.Input.asInput<String>(attributeId),
      dataTaxonomyId = pulumi.Input.asInput<String>(dataTaxonomyId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeId': attributeId,
      'dataTaxonomyId': dataTaxonomyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAttributeArgs.fromMap(Map<String, dynamic> map) {
    return GetAttributeArgs(
      attributeId: pulumi.Output.create<String>(map['attributeId'] as String),
      dataTaxonomyId: pulumi.Output.create<String>(map['dataTaxonomyId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

