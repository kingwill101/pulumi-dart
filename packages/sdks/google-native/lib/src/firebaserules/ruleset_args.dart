// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source.dart';

/// {@template pulumi_firebaserules_v1_ruleset_args_doc}
/// The set of arguments for Ruleset.
/// {@endtemplate}
/// {@macro pulumi_firebaserules_v1_ruleset_args_doc}
class RulesetArgs {
  final pulumi.Input<String>? project;
  /// `Source` for the `Ruleset`.
  final pulumi.Input<Source> source;

  /// Creates a new [RulesetArgs].
  /// [project] Optional.
  /// [source] `Source` for the `Ruleset`.
  RulesetArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<Source> source,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      source = pulumi.Input.asInput<Source>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'source': pulumi.Input.mapInputValue<Source, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory RulesetArgs.fromMap(Map<String, dynamic> map) {
    return RulesetArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      source: pulumi.Output.create<Source>(Source.fromMap((map['source'] as Map).cast<String, dynamic>())),
    );
  }
}

