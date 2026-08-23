// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_refinement_outcome_filter.dart';

/// Input properties used for looking up and filtering FindingsRefinement resources.
class FindingsRefinementState {
  /// The timestamp of when the findings refinement was created.
  final pulumi.Input<String>? createTime;
  /// Display name of the findings refinement.
  final pulumi.Input<String>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Full resource name for the findings refinement.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/findingsRefinements/{findings_refinement}
  final pulumi.Input<String>? name;
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
  /// The timestamp of when the findings refinement was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FindingsRefinementState].
  /// [createTime] The timestamp of when the findings refinement was created.
  /// [displayName] Display name of the findings refinement.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Full resource name for the findings refinement.
  /// [outcomeFilters] The outcome filters for the findings refinement. These allow you to specify
  /// [project] The ID of the project in which the resource belongs.
  /// [query] The query for the findings refinement. Works in conjunction with the type
  /// [type] DETECTION_EXCLUSION is the only supported type of findings refinement.
  /// [updateTime] The timestamp of when the findings refinement was last updated.
  const FindingsRefinementState({
    this.createTime,
    this.displayName,
    this.instance,
    this.location,
    this.name,
    this.outcomeFilters,
    this.project,
    this.query,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'outcomeFilters': ?pulumi.Input.mapOptionalInputValue<List<FindingsRefinementOutcomeFilter>, List<Map<String, dynamic>>>(outcomeFilters, (value) => pulumi.Input.encodeList<FindingsRefinementOutcomeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'query': ?query,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory FindingsRefinementState.fromMap(Map<String, dynamic> map) {
    return FindingsRefinementState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outcomeFilters: (() { final guardedValue = map['outcomeFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FindingsRefinementOutcomeFilter>(guardedValue, (value) => FindingsRefinementOutcomeFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
