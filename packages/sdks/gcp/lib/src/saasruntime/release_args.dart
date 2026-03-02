// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_blueprint.dart';
import 'release_input_variable_default.dart';
import 'release_release_requirements.dart';

/// {@template pulumi_saasruntime_release_release_args_doc}
/// The set of arguments for Release.
/// {@endtemplate}
/// {@macro pulumi_saasruntime_release_release_args_doc}
class ReleaseArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<ReleaseBlueprint>? blueprint;
  /// Mapping of input variables to default values. Maximum 100
  /// Structure is documented below.
  final pulumi.Input<List<ReleaseInputVariableDefault>>? inputVariableDefaults;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID value for the new release.
  final pulumi.Input<String> releaseId;
  /// Set of requirements to be fulfilled on the Unit when using this Release.
  /// Structure is documented below.
  final pulumi.Input<ReleaseReleaseRequirements>? releaseRequirements;
  /// Reference to the UnitKind this Release corresponds to (required and
  /// immutable once created).
  final pulumi.Input<String> unitKind;

  /// Creates a new [ReleaseArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [blueprint] Optional.
  /// [inputVariableDefaults] Mapping of input variables to default values. Maximum 100
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [releaseId] The ID value for the new release.
  /// [releaseRequirements] Set of requirements to be fulfilled on the Unit when using this Release.
  /// [unitKind] Reference to the UnitKind this Release corresponds to (required and
  ReleaseArgs({
    this.annotations,
    this.blueprint,
    this.inputVariableDefaults,
    this.labels,
    required this.location,
    this.project,
    required this.releaseId,
    this.releaseRequirements,
    required this.unitKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'blueprint': ?pulumi.Input.mapOptionalInputValue<ReleaseBlueprint, Map<String, dynamic>>(blueprint, (value) => value.toMap()),
      'inputVariableDefaults': ?pulumi.Input.mapOptionalInputValue<List<ReleaseInputVariableDefault>, List<Map<String, dynamic>>>(inputVariableDefaults, (value) => pulumi.Input.encodeList<ReleaseInputVariableDefault, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'releaseId': releaseId,
      'releaseRequirements': ?pulumi.Input.mapOptionalInputValue<ReleaseReleaseRequirements, Map<String, dynamic>>(releaseRequirements, (value) => value.toMap()),
      'unitKind': unitKind,
    };
  }

  factory ReleaseArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      blueprint: map['blueprint'] == null ? null : (ReleaseBlueprint.fromMap((map['blueprint']! as Map).cast<String, dynamic>())).input(),
      inputVariableDefaults: map['inputVariableDefaults'] == null ? null : (pulumi.Input.decodeList<ReleaseInputVariableDefault>(map['inputVariableDefaults']!, (value) => ReleaseInputVariableDefault.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      releaseId: (map['releaseId'] as String).input(),
      releaseRequirements: map['releaseRequirements'] == null ? null : (ReleaseReleaseRequirements.fromMap((map['releaseRequirements']! as Map).cast<String, dynamic>())).input(),
      unitKind: (map['unitKind'] as String).input(),
    );
  }
}

