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
  const GetSynonymSetArgs({
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
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synonymSetId: pulumi.Input.fromValue(map['synonymSetId'] as String),
    );
  }
}

