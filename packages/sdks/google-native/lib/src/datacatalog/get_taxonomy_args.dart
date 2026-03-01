// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_get_taxonomy_args_doc}
/// Arguments for getTaxonomy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_get_taxonomy_args_doc}
class GetTaxonomyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taxonomyId;

  /// Creates a new [GetTaxonomyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [taxonomyId] Required.
  GetTaxonomyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> taxonomyId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      taxonomyId = pulumi.Input.asInput<String>(taxonomyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'taxonomyId': taxonomyId,
    };
  }

  factory GetTaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      taxonomyId: pulumi.Output.create<String>(map['taxonomyId'] as String),
    );
  }
}

