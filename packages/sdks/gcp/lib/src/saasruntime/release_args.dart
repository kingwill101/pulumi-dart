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
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Blueprints are OCI Images that contain all of the artifacts needed to
  /// provision a unit. Metadata such as, type of the engine used to actuate the
  /// blueprint (e.g. terraform, helm etc) and version will come from the image
  /// manifest. If the hostname is omitted, it will be assumed to be the regional
  /// path to Artifact Registry (eg. us-east1-docker.pkg.dev).
  /// Structure is documented below.
  final pulumi.Input<ReleaseBlueprint?>? blueprint;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Mapping of input variables to default values. Maximum 100
  /// Structure is documented below.
  final pulumi.Input<List<ReleaseInputVariableDefault>?>? inputVariableDefaults;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID value for the new release.
  final pulumi.Input<String> releaseId;
  /// Set of requirements to be fulfilled on the Unit when using this Release.
  /// Structure is documented below.
  final pulumi.Input<ReleaseReleaseRequirements?>? releaseRequirements;
  /// Reference to the UnitKind this Release corresponds to (required and
  /// immutable once created).
  final pulumi.Input<String> unitKind;

  /// Creates a new [ReleaseArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [blueprint] Blueprints are OCI Images that contain all of the artifacts needed to
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [inputVariableDefaults] Mapping of input variables to default values. Maximum 100
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [releaseId] The ID value for the new release.
  /// [releaseRequirements] Set of requirements to be fulfilled on the Unit when using this Release.
  /// [unitKind] Reference to the UnitKind this Release corresponds to (required and
  const ReleaseArgs({
    this.annotations,
    this.blueprint,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      blueprint: (() { final guardedValue = map['blueprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReleaseBlueprint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputVariableDefaults: (() { final guardedValue = map['inputVariableDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReleaseInputVariableDefault>(guardedValue, (value) => ReleaseInputVariableDefault.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseId: pulumi.Input.fromValue(map['releaseId'] as String),
      releaseRequirements: (() { final guardedValue = map['releaseRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReleaseReleaseRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unitKind: pulumi.Input.fromValue(map['unitKind'] as String),
    );
  }
}
