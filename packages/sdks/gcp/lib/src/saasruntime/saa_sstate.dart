// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saa_sapplication_template.dart';
import 'saa_scondition.dart';
import 'saa_serror.dart';
import 'saa_slocation.dart';

/// Input properties used for looking up and filtering SaaS resources.
class SaaSState {
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
  /// Name of the repository in Artifact Registry for system-generated
  /// Blueprints, for example the Blueprints of imported ApplicationTemplates.
  final pulumi.Input<String?>? blueprintRepo;
  /// A set of conditions which indicate the various conditions this resource can
  /// have.
  /// Structure is documented below.
  final pulumi.Input<List<SaaSCondition>?>? conditions;
  /// The timestamp when the resource was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// If the state is `STATE_FAILED`, the corresponding error code and message.
  /// Structure is documented below.
  final pulumi.Input<List<SaaSError>?>? errors;
  /// An opaque value that uniquely identifies a version or
  /// generation of a resource. It can be used to confirm that the client
  /// and server agree on the ordering of a resource being written.
  final pulumi.Input<String?>? etag;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// List of locations that the service is available in. Rollout refers to the
  /// list to generate a rollout plan.
  /// Structure is documented below.
  final pulumi.Input<List<SaaSLocation>?>? locations;
  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/saas/{saas}"
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The ID value for the new saas.
  final pulumi.Input<String?>? saasId;
  /// State of the Saas. It is always `STATE_ACTIVE` if
  /// `application_template.revision` is empty.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// STATE_TYPE_UNSPECIFIED
  /// STATE_ACTIVE
  /// STATE_RUNNING
  /// STATE_FAILED
  final pulumi.Input<String?>? state;
  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  final pulumi.Input<String?>? uid;
  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [SaaSState].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [applicationTemplate] Reference to a composite Application Design Center ApplicationTemplate.
  /// [blueprintRepo] Name of the repository in Artifact Registry for system-generated
  /// [conditions] A set of conditions which indicate the various conditions this resource can
  /// [createTime] The timestamp when the resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [errors] If the state is `STATE_FAILED`, the corresponding error code and message.
  /// [etag] An opaque value that uniquely identifies a version or
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [locations] List of locations that the service is available in. Rollout refers to the
  /// [name] Identifier. The resource name (full URI of the resource) following the standard naming
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [saasId] The ID value for the new saas.
  /// [state] State of the Saas. It is always `STATE_ACTIVE` if
  /// [uid] The unique identifier of the resource. UID is unique in the time
  /// [updateTime] The timestamp when the resource was last updated. Any
  const SaaSState({
    this.annotations,
    this.applicationTemplate,
    this.blueprintRepo,
    this.conditions,
    this.createTime,
    this.deletionPolicy,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.errors,
    this.etag,
    this.labels,
    this.location,
    this.locations,
    this.name,
    this.project,
    this.pulumiLabels,
    this.saasId,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'applicationTemplate': ?pulumi.Input.mapOptionalInputValue<SaaSApplicationTemplate, Map<String, dynamic>>(applicationTemplate, (value) => value.toMap()),
      'blueprintRepo': ?blueprintRepo,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<SaaSCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<SaaSCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<SaaSError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<SaaSError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'locations': ?pulumi.Input.mapOptionalInputValue<List<SaaSLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<SaaSLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'saasId': ?saasId,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory SaaSState.fromMap(Map<String, dynamic> map) {
    return SaaSState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      applicationTemplate: (() { final guardedValue = map['applicationTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SaaSApplicationTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blueprintRepo: (() { final guardedValue = map['blueprintRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SaaSCondition>(guardedValue, (value) => SaaSCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SaaSError>(guardedValue, (value) => SaaSError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SaaSLocation>(guardedValue, (value) => SaaSLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      saasId: (() { final guardedValue = map['saasId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
