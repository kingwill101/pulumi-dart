// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_refinement_outcome_filter.dart';

/// {@template pulumi_chronicle_findings_refinement_findings_refinement_args_doc}
/// The set of arguments for FindingsRefinement.
/// {@endtemplate}
/// {@macro pulumi_chronicle_findings_refinement_findings_refinement_args_doc}
class FindingsRefinementArgs {
  /// Display name of the findings refinement.
  final pulumi.Input<String>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The outcome filters for the findings refinement. These allow you to specify
  /// filters that are applied to the outcome variables in the detection.
  /// All filters must be true for a detection to match the findings refinement.
  /// Structure is documented below.
  final pulumi.Input<List<FindingsRefinementOutcomeFilter>>? outcomeFilters;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The query for the findings refinement. Works in conjunction with the type
  /// field to determine the findings refinement behavior. The syntax of this
  /// query is the same as a UDM search string. See the following for more
  /// information:
  /// https://cloud.google.com/chronicle/docs/investigation/udm-search
  final pulumi.Input<String>? query;
  /// DETECTION_EXCLUSION is the only supported type of findings refinement.
  /// Possible values:
  /// DETECTION_EXCLUSION
  final pulumi.Input<String>? type;

  /// Creates a new [FindingsRefinementArgs].
  /// [displayName] Display name of the findings refinement.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [outcomeFilters] The outcome filters for the findings refinement. These allow you to specify
  /// [project] The ID of the project in which the resource belongs.
  /// [query] The query for the findings refinement. Works in conjunction with the type
  /// [type] DETECTION_EXCLUSION is the only supported type of findings refinement.
  const FindingsRefinementArgs({
    this.displayName,
    required this.instance,
    required this.location,
    this.outcomeFilters,
    this.project,
    this.query,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'instance': instance,
      'location': location,
      'outcomeFilters': ?pulumi.Input.mapOptionalInputValue<List<FindingsRefinementOutcomeFilter>, List<Map<String, dynamic>>>(outcomeFilters, (value) => pulumi.Input.encodeList<FindingsRefinementOutcomeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'query': ?query,
      'type': ?type,
    };
  }

  factory FindingsRefinementArgs.fromMap(Map<String, dynamic> map) {
    return FindingsRefinementArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      outcomeFilters: (() { final guardedValue = map['outcomeFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FindingsRefinementOutcomeFilter>(guardedValue, (value) => FindingsRefinementOutcomeFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
