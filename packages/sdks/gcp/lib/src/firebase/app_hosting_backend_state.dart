// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_backend_codebase.dart';
import 'app_hosting_backend_managed_resource.dart';

/// Input properties used for looking up and filtering AppHostingBackend resources.
class AppHostingBackendState {
  /// Unstructured key value map that may be set by external tools to
  /// store and arbitrary metadata. They are not queryable and should be
  /// preserved when modifying objects.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// The [ID of a Web
  /// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the backend.
  final pulumi.Input<String?>? appId;
  /// Id of the backend. Also used as the service ID for Cloud Run, and as part
  /// of the default domain name.
  final pulumi.Input<String?>? backendId;
  /// The connection to an external source repository to watch for event-driven
  /// updates to the backend.
  /// Structure is documented below.
  final pulumi.Input<AppHostingBackendCodebase?>? codebase;
  /// Time at which the backend was created.
  final pulumi.Input<String?>? createTime;
  /// Time at which the backend was deleted.
  final pulumi.Input<String?>? deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human-readable name. 63 character limit.
  final pulumi.Input<String?>? displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// The environment name of the backend, used to load environment variables
  /// from environment specific configuration.
  final pulumi.Input<String?>? environment;
  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  final pulumi.Input<String?>? etag;
  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The canonical IDs of a Google Cloud location such as "us-east1".
  final pulumi.Input<String?>? location;
  /// A list of the resources managed by this backend.
  /// Structure is documented below.
  final pulumi.Input<List<AppHostingBackendManagedResource>?>? managedResources;
  /// Identifier. The resource name of the backend.
  /// Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The name of the service account used for Cloud Build and Cloud Run.
  /// Should have the role roles/firebaseapphosting.computeRunner
  /// or equivalent permissions.
  final pulumi.Input<String?>? serviceAccount;
  /// Immutable. Specifies how App Hosting will serve the content for this backend. It will
  /// either be contained to a single region (REGIONAL_STRICT) or allowed to use
  /// App Hosting's global-replicated serving infrastructure (GLOBAL_ACCESS).
  /// Possible values are: `REGIONAL_STRICT`, `GLOBAL_ACCESS`.
  final pulumi.Input<String?>? servingLocality;
  /// System-assigned, unique identifier.
  final pulumi.Input<String?>? uid;
  /// Time at which the backend was last updated.
  final pulumi.Input<String?>? updateTime;
  /// The primary URI to communicate with the backend.
  final pulumi.Input<String?>? uri;

  /// Creates a new [AppHostingBackendState].
  /// [annotations] Unstructured key value map that may be set by external tools to
  /// [appId] The [ID of a Web
  /// [backendId] Id of the backend. Also used as the service ID for Cloud Run, and as part
  /// [codebase] The connection to an external source repository to watch for event-driven
  /// [createTime] Time at which the backend was created.
  /// [deleteTime] Time at which the backend was deleted.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable name. 63 character limit.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [environment] The environment name of the backend, used to load environment variables
  /// [etag] Server-computed checksum based on other values; may be sent
  /// [labels] Unstructured key value map that can be used to organize and categorize
  /// [location] The canonical IDs of a Google Cloud location such as "us-east1".
  /// [managedResources] A list of the resources managed by this backend.
  /// [name] Identifier. The resource name of the backend.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serviceAccount] The name of the service account used for Cloud Build and Cloud Run.
  /// [servingLocality] Immutable. Specifies how App Hosting will serve the content for this backend. It will
  /// [uid] System-assigned, unique identifier.
  /// [updateTime] Time at which the backend was last updated.
  /// [uri] The primary URI to communicate with the backend.
  const AppHostingBackendState({
    this.annotations,
    this.appId,
    this.backendId,
    this.codebase,
    this.createTime,
    this.deleteTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.environment,
    this.etag,
    this.labels,
    this.location,
    this.managedResources,
    this.name,
    this.project,
    this.pulumiLabels,
    this.serviceAccount,
    this.servingLocality,
    this.uid,
    this.updateTime,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'appId': ?appId,
      'backendId': ?backendId,
      'codebase': ?pulumi.Input.mapOptionalInputValue<AppHostingBackendCodebase, Map<String, dynamic>>(codebase, (value) => value.toMap()),
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'environment': ?environment,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'managedResources': ?pulumi.Input.mapOptionalInputValue<List<AppHostingBackendManagedResource>, List<Map<String, dynamic>>>(managedResources, (value) => pulumi.Input.encodeList<AppHostingBackendManagedResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceAccount': ?serviceAccount,
      'servingLocality': ?servingLocality,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'uri': ?uri,
    };
  }

  factory AppHostingBackendState.fromMap(Map<String, dynamic> map) {
    return AppHostingBackendState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendId: (() { final guardedValue = map['backendId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codebase: (() { final guardedValue = map['codebase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppHostingBackendCodebase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResources: (() { final guardedValue = map['managedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppHostingBackendManagedResource>(guardedValue, (value) => AppHostingBackendManagedResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servingLocality: (() { final guardedValue = map['servingLocality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
