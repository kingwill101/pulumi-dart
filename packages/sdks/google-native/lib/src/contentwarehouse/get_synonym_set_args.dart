// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contentwarehouse_v1_get_synonym_set_args_doc}
/// Arguments for getSynonymSet.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_get_synonym_set_args_doc}
class GetSynonymSetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> synonymSetId;

  /// Creates a new [GetSynonymSetArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [synonymSetId] Required.
  GetSynonymSetArgs({
    required this.location,
    this.project,
    required this.synonymSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'synonymSetId': synonymSetId,
    };
  }

  factory GetSynonymSetArgs.fromMap(Map<String, dynamic> map) {
    return GetSynonymSetArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      synonymSetId: (map['synonymSetId'] as String).input(),
    );
  }
}

