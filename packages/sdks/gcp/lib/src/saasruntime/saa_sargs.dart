// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saa_sapplication_template.dart';
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
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Reference to a composite Application Design Center ApplicationTemplate.
  /// When `revision` is set, the service imports the template components into
  /// equivalent UnitKind, Release and Blueprint resources. Create waits for
  /// the import to finish. Update waits when the template changes or when the
  /// Saas was failed, running, or not yet started. Both fail if `state`
  /// becomes `STATE_FAILED`.
  /// * The import creates UnitKinds (named `u-&lt;rootModuleId&gt;-&lt;6 chars&gt;`) and
  /// their Releases, and copies the Saas, the UnitKinds and the Releases to
  /// `global` and to the other `locations`. Terraform doesn't manage or
  /// delete any of them, including when this field changes. Before
  /// destroying or replacing the Saas (including `pulumi up -replace`
  /// and recreating a tainted Saas), delete the imported UnitKinds and
  /// Releases in every location: the API rejects the deletion of a Saas
  /// that still has UnitKinds.
  /// * After a failed import, fix the template and change `revision`. Any
  /// apply that changes a failed Saas restarts the import, and the provider
  /// waits for the restarted import to finish or fail again.
  /// * While an import is running, the provider retries template or revision
  /// updates and DELETE until it finishes, within the resource timeouts.
  /// * Don't create Terraform-managed UnitKinds whose
  /// `applicationTemplateComponent` matches a component of this
  /// template: the import adopts them and overwrites their fields.
  /// * Set this field only on the source-region Saas, not on the copies in
  /// `global` or other `locations`.
  /// Structure is documented below.
  final pulumi.Input<SaaSApplicationTemplate?>? applicationTemplate;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// List of locations that the service is available in. Rollout refers to the
  /// list to generate a rollout plan.
  /// Structure is documented below.
  final pulumi.Input<List<SaaSLocation>?>? locations;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID value for the new saas.
  final pulumi.Input<String> saasId;

  /// Creates a new [SaaSArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [applicationTemplate] Reference to a composite Application Design Center ApplicationTemplate.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [locations] List of locations that the service is available in. Rollout refers to the
  /// [project] The ID of the project in which the resource belongs.
  /// [saasId] The ID value for the new saas.
  const SaaSArgs({
    this.annotations,
    this.applicationTemplate,
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
      'applicationTemplate': ?pulumi.Input.mapOptionalInputValue<SaaSApplicationTemplate, Map<String, dynamic>>(applicationTemplate, (value) => value.toMap()),
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
      applicationTemplate: (() { final guardedValue = map['applicationTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SaaSApplicationTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SaaSLocation>(guardedValue, (value) => SaaSLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saasId: pulumi.Input.fromValue(map['saasId'] as String),
    );
  }
}
