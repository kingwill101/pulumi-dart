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
    required this.dataTaxonomyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTaxonomyId': dataTaxonomyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataTaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataTaxonomyArgs(
      dataTaxonomyId: pulumi.Input.fromValue(map['dataTaxonomyId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

