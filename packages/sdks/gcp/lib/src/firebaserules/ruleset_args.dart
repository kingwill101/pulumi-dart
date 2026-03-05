// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_source.dart';

/// {@template pulumi_firebaserules_ruleset_ruleset_args_doc}
/// The set of arguments for Ruleset.
/// {@endtemplate}
/// {@macro pulumi_firebaserules_ruleset_ruleset_args_doc}
class RulesetArgs {
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// `Source` for the `Ruleset`.
  final pulumi.Input<RulesetSource> source;

  /// Creates a new [RulesetArgs].
  /// [project] The project for the resource
  /// [source] `Source` for the `Ruleset`.
  RulesetArgs({
    this.project,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'source': pulumi.Input.mapInputValue<RulesetSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory RulesetArgs.fromMap(Map<String, dynamic> map) {
    return RulesetArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(RulesetSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}

