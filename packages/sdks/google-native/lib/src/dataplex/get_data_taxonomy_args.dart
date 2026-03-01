// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_data_taxonomy_args_doc}
/// Arguments for getDataTaxonomy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_data_taxonomy_args_doc}
class GetDataTaxonomyArgs {
  final pulumi.Input<String> dataTaxonomyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataTaxonomyArgs].
  /// [dataTaxonomyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDataTaxonomyArgs({
    required pulumi.Output<String> dataTaxonomyId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      dataTaxonomyId = pulumi.Input.asInput<String>(dataTaxonomyId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTaxonomyId': dataTaxonomyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataTaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataTaxonomyArgs(
      dataTaxonomyId: pulumi.Output.create<String>(map['dataTaxonomyId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

