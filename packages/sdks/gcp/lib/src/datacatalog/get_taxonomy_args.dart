// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_get_taxonomy_get_taxonomy_args_doc}
/// Arguments for getTaxonomy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_get_taxonomy_get_taxonomy_args_doc}
class GetTaxonomyArgs {
  /// The user-defined name of the taxonomy to look up.
  final pulumi.Input<String> displayName;
  /// The project in which the taxonomy exists. If not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region the taxonomy is located in.
  final pulumi.Input<String> region;

  /// Creates a new [GetTaxonomyArgs].
  /// [displayName] The user-defined name of the taxonomy to look up.
  /// [project] The project in which the taxonomy exists. If not provided, the provider project is used.
  /// [region] The region the taxonomy is located in.
  const GetTaxonomyArgs({
    required this.displayName,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'project': ?project,
      'region': region,
    };
  }

  factory GetTaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
