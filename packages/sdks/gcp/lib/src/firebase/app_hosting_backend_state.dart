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
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The [ID of a Web
  /// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the backend.
  final pulumi.Input<String>? appId;
  /// Id of the backend. Also used as the service ID for Cloud Run, and as part
  /// of the default domain name.
  final pulumi.Input<String>? backendId;
  /// The connection to an external source repository to watch for event-driven
  /// updates to the backend.
  /// Structure is documented below.
  final pulumi.Input<AppHostingBackendCodebase>? codebase;
  /// Time at which the backend was created.
  final pulumi.Input<String>? createTime;
  /// Time at which the backend was deleted.
  final pulumi.Input<String>? deleteTime;
  /// Human-readable name. 63 character limit.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The environment name of the backend, used to load environment variables
  /// from environment specific configuration.
  final pulumi.Input<String>? environment;
  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  final pulumi.Input<String>? etag;
  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The canonical IDs of a Google Cloud location such as "us-east1".
  final pulumi.Input<String>? location;
  /// A list of the resources managed by this backend.
  /// Structure is documented below.
  final pulumi.Input<List<AppHostingBackendManagedResource>>? managedResources;
  /// Identifier. The resource name of the backend.
  /// Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The name of the service account used for Cloud Build and Cloud Run.
  /// Should have the role roles/firebaseapphosting.computeRunner
  /// or equivalent permissions.
  final pulumi.Input<String>? serviceAccount;
  /// Immutable. Specifies how App Hosting will serve the content for this backend. It will
  /// either be contained to a single region (REGIONAL_STRICT) or allowed to use
  /// App Hosting's global-replicated serving infrastructure (GLOBAL_ACCESS).
  /// Possible values are: `REGIONAL_STRICT`, `GLOBAL_ACCESS`.
  final pulumi.Input<String>? servingLocality;
  /// System-assigned, unique identifier.
  final pulumi.Input<String>? uid;
  /// Time at which the backend was last updated.
  final pulumi.Input<String>? updateTime;
  /// The primary URI to communicate with the backend.
  final pulumi.Input<String>? uri;

  /// Creates a new [AppHostingBackendState].
  /// [annotations] Unstructured key value map that may be set by external tools to
  /// [appId] The [ID of a Web
  /// [backendId] Id of the backend. Also used as the service ID for Cloud Run, and as part
  /// [codebase] The connection to an external source repository to watch for event-driven
  /// [createTime] Time at which the backend was created.
  /// [deleteTime] Time at which the backend was deleted.
  /// [displayName] Human-readable name. 63 character limit.
  /// [effectiveAnnotations] Optional.
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
  AppHostingBackendState({
    this.annotations,
    this.appId,
    this.backendId,
    this.codebase,
    this.createTime,
    this.deleteTime,
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
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      appId: map['appId'] == null ? null : (map['appId'] as String).input(),
      backendId: map['backendId'] == null ? null : (map['backendId'] as String).input(),
      codebase: map['codebase'] == null ? null : (AppHostingBackendCodebase.fromMap((map['codebase'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations'] as Map).cast<String, String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      environment: map['environment'] == null ? null : (map['environment'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedResources: map['managedResources'] == null ? null : (pulumi.Input.decodeList<AppHostingBackendManagedResource>(map['managedResources'], (value) => AppHostingBackendManagedResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      servingLocality: map['servingLocality'] == null ? null : (map['servingLocality'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

