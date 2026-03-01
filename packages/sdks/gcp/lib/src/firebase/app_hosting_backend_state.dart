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
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? appId,
    pulumi.Output<String>? backendId,
    pulumi.Output<AppHostingBackendCodebase>? codebase,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? environment,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<List<AppHostingBackendManagedResource>>? managedResources,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<String>? servingLocality,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? uri,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      appId = pulumi.Input.asOptionalInput<String>(appId),
      backendId = pulumi.Input.asOptionalInput<String>(backendId),
      codebase = pulumi.Input.asOptionalInput<AppHostingBackendCodebase>(codebase),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResources = pulumi.Input.asOptionalInput<List<AppHostingBackendManagedResource>>(managedResources),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      servingLocality = pulumi.Input.asOptionalInput<String>(servingLocality),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      uri = pulumi.Input.asOptionalInput<String>(uri);

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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      backendId: map['backendId'] == null ? null : pulumi.Output.create<String>(map['backendId'] as String),
      codebase: map['codebase'] == null ? null : pulumi.Output.create<AppHostingBackendCodebase>(AppHostingBackendCodebase.fromMap((map['codebase'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResources: map['managedResources'] == null ? null : pulumi.Output.create<List<AppHostingBackendManagedResource>>(pulumi.Input.decodeList<AppHostingBackendManagedResource>(map['managedResources'], (value) => AppHostingBackendManagedResource.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      servingLocality: map['servingLocality'] == null ? null : pulumi.Output.create<String>(map['servingLocality'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

