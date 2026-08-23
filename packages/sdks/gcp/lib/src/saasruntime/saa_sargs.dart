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
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [locations] List of locations that the service is available in. Rollout refers to the
  /// [project] The ID of the project in which the resource belongs.
  /// [saasId] The ID value for the new saas.
  const SaaSArgs({
    this.annotations,
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.locations,
    this.project,
    required this.saasId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'locations': ?pulumi.Input.mapOptionalInputValue<List<SaaSLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<SaaSLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'saasId': saasId,
    };
  }

  factory SaaSArgs.fromMap(Map<String, dynamic> map) {
    return SaaSArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SaaSLocation>(guardedValue, (value) => SaaSLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saasId: pulumi.Input.fromValue(map['saasId'] as String),
    );
  }
}
