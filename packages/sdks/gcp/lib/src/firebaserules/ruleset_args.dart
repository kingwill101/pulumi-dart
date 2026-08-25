// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_source.dart';

/// {@template pulumi_firebaserules_ruleset_ruleset_args_doc}
/// The set of arguments for Ruleset.
/// {@endtemplate}
/// {@macro pulumi_firebaserules_ruleset_ruleset_args_doc}
class RulesetArgs {
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The project for the resource
  final pulumi.Input<String?>? project;
  /// `Source` for the `Ruleset`.
  final pulumi.Input<RulesetSource> source;

  /// Creates a new [RulesetArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [project] The project for the resource
  /// [source] `Source` for the `Ruleset`.
  const RulesetArgs({
    this.deletionPolicy,
    this.project,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
      'source': pulumi.Input.mapInputValue<RulesetSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory RulesetArgs.fromMap(Map<String, dynamic> map) {
    return RulesetArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(RulesetSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
