// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_kind_dependency.dart';
import 'unit_kind_input_variable_mapping.dart';
import 'unit_kind_output_variable_mapping.dart';

/// {@template pulumi_saasruntime_unit_kind_unit_kind_args_doc}
/// The set of arguments for UnitKind.
/// {@endtemplate}
/// {@macro pulumi_saasruntime_unit_kind_unit_kind_args_doc}
class UnitKindArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// A reference to the Release object to use as default for creating new units
  /// of this UnitKind.
  /// If not specified, a new unit must explicitly reference which release to use
  /// for its creation.
  final pulumi.Input<String>? defaultRelease;

  /// List of other unit kinds that this release will depend on. Dependencies
  /// will be automatically provisioned if not found. Maximum 10.
  /// Structure is documented below.
  final pulumi.Input<List<UnitKindDependency>>? dependencies;

  /// List of inputVariables for this release that will either be retrieved from
  /// a dependency’s outputVariables, or will be passed on to a dependency’s
  /// inputVariables. Maximum 100.
  /// Structure is documented below.
  final pulumi.Input<List<UnitKindInputVariableMapping>>? inputVariableMappings;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// List of outputVariables for this unit kind will be passed to this unit's
  /// outputVariables. Maximum 100.
  /// Structure is documented below.
  final pulumi.Input<List<UnitKindOutputVariableMapping>>?
  outputVariableMappings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the Saas that defines the product (managed service) that
  /// the producer wants to manage with SaaS Runtime. Part of the SaaS Runtime
  /// common data model. Immutable once set.
  final pulumi.Input<String> saas;

  /// The ID value for the new unit kind.
  final pulumi.Input<String> unitKindId;

  /// Creates a new [UnitKindArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [defaultRelease] A reference to the Release object to use as default for creating new units
  /// [dependencies] List of other unit kinds that this release will depend on. Dependencies
  /// [inputVariableMappings] List of inputVariables for this release that will either be retrieved from
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [outputVariableMappings] List of outputVariables for this unit kind will be passed to this unit's
  /// [project] The ID of the project in which the resource belongs.
  /// [saas] A reference to the Saas that defines the product (managed service) that
  /// [unitKindId] The ID value for the new unit kind.
  UnitKindArgs({
    this.annotations,
    this.defaultRelease,
    this.dependencies,
    this.inputVariableMappings,
    this.labels,
    required this.location,
    this.outputVariableMappings,
    this.project,
    required this.saas,
    required this.unitKindId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'defaultRelease': ?defaultRelease,
      'dependencies':
          ?pulumi.Input.mapOptionalInputValue<
            List<UnitKindDependency>,
            List<Map<String, dynamic>>
          >(
            dependencies,
            (value) =>
                pulumi.Input.encodeList<
                  UnitKindDependency,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'inputVariableMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<UnitKindInputVariableMapping>,
            List<Map<String, dynamic>>
          >(
            inputVariableMappings,
            (value) =>
                pulumi.Input.encodeList<
                  UnitKindInputVariableMapping,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'labels': ?labels,
      'location': location,
      'outputVariableMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<UnitKindOutputVariableMapping>,
            List<Map<String, dynamic>>
          >(
            outputVariableMappings,
            (value) =>
                pulumi.Input.encodeList<
                  UnitKindOutputVariableMapping,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'saas': saas,
      'unitKindId': unitKindId,
    };
  }

  factory UnitKindArgs.fromMap(Map<String, dynamic> map) {
    return UnitKindArgs(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      defaultRelease: (() {
        final guardedValue = map['defaultRelease'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dependencies: (() {
        final guardedValue = map['dependencies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UnitKindDependency>(
            guardedValue,
            (value) => UnitKindDependency.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      inputVariableMappings: (() {
        final guardedValue = map['inputVariableMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UnitKindInputVariableMapping>(
            guardedValue,
            (value) => UnitKindInputVariableMapping.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      outputVariableMappings: (() {
        final guardedValue = map['outputVariableMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UnitKindOutputVariableMapping>(
            guardedValue,
            (value) => UnitKindOutputVariableMapping.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      saas: pulumi.Input.fromValue(map['saas'] as String),
      unitKindId: pulumi.Input.fromValue(map['unitKindId'] as String),
    );
  }
}
