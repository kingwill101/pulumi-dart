// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saa_slocation.dart';

/// {@template pulumi_saasruntime_saa_s_saa_sargs_doc}
/// The set of arguments for SaaS.
/// {@endtemplate}
/// {@macro pulumi_saasruntime_saa_s_saa_sargs_doc}
class SaaSArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// List of locations that the service is available in. Rollout refers to the
  /// list to generate a rollout plan.
  /// Structure is documented below.
  final pulumi.Input<List<SaaSLocation>>? locations;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID value for the new saas.
  final pulumi.Input<String> saasId;

  /// Creates a new [SaaSArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [locations] List of locations that the service is available in. Rollout refers to the
  /// [project] The ID of the project in which the resource belongs.
  /// [saasId] The ID value for the new saas.
  SaaSArgs({
    this.annotations,
    this.labels,
    required this.location,
    this.locations,
    this.project,
    required this.saasId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'labels': ?labels,
      'location': location,
      'locations': ?pulumi.Input.mapOptionalInputValue<List<SaaSLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<SaaSLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'saasId': saasId,
    };
  }

  factory SaaSArgs.fromMap(Map<String, dynamic> map) {
    return SaaSArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      locations: map['locations'] == null ? null : (pulumi.Input.decodeList<SaaSLocation>(map['locations'], (value) => SaaSLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      saasId: (map['saasId'] as String).input(),
    );
  }
}

