// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_backend_codebase.dart';

/// {@template pulumi_firebase_app_hosting_backend_app_hosting_backend_args_doc}
/// The set of arguments for AppHostingBackend.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_hosting_backend_app_hosting_backend_args_doc}
class AppHostingBackendArgs {
  /// Unstructured key value map that may be set by external tools to
  /// store and arbitrary metadata. They are not queryable and should be
  /// preserved when modifying objects.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The [ID of a Web
  /// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the backend.
  final pulumi.Input<String> appId;
  /// Id of the backend. Also used as the service ID for Cloud Run, and as part
  /// of the default domain name.
  final pulumi.Input<String> backendId;
  /// The connection to an external source repository to watch for event-driven
  /// updates to the backend.
  /// Structure is documented below.
  final pulumi.Input<AppHostingBackendCodebase>? codebase;
  /// Human-readable name. 63 character limit.
  final pulumi.Input<String>? displayName;
  /// The environment name of the backend, used to load environment variables
  /// from environment specific configuration.
  final pulumi.Input<String>? environment;
  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The canonical IDs of a Google Cloud location such as "us-east1".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the service account used for Cloud Build and Cloud Run.
  /// Should have the role roles/firebaseapphosting.computeRunner
  /// or equivalent permissions.
  final pulumi.Input<String> serviceAccount;
  /// Immutable. Specifies how App Hosting will serve the content for this backend. It will
  /// either be contained to a single region (REGIONAL_STRICT) or allowed to use
  /// App Hosting's global-replicated serving infrastructure (GLOBAL_ACCESS).
  /// Possible values are: `REGIONAL_STRICT`, `GLOBAL_ACCESS`.
  final pulumi.Input<String> servingLocality;

  /// Creates a new [AppHostingBackendArgs].
  /// [annotations] Unstructured key value map that may be set by external tools to
  /// [appId] The [ID of a Web
  /// [backendId] Id of the backend. Also used as the service ID for Cloud Run, and as part
  /// [codebase] The connection to an external source repository to watch for event-driven
  /// [displayName] Human-readable name. 63 character limit.
  /// [environment] The environment name of the backend, used to load environment variables
  /// [labels] Unstructured key value map that can be used to organize and categorize
  /// [location] The canonical IDs of a Google Cloud location such as "us-east1".
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceAccount] The name of the service account used for Cloud Build and Cloud Run.
  /// [servingLocality] Immutable. Specifies how App Hosting will serve the content for this backend. It will
  AppHostingBackendArgs({
    this.annotations,
    required this.appId,
    required this.backendId,
    this.codebase,
    this.displayName,
    this.environment,
    this.labels,
    required this.location,
    this.project,
    required this.serviceAccount,
    required this.servingLocality,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'appId': appId,
      'backendId': backendId,
      'codebase': ?pulumi.Input.mapOptionalInputValue<AppHostingBackendCodebase, Map<String, dynamic>>(codebase, (value) => value.toMap()),
      'displayName': ?displayName,
      'environment': ?environment,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'serviceAccount': serviceAccount,
      'servingLocality': servingLocality,
    };
  }

  factory AppHostingBackendArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingBackendArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      appId: (map['appId'] as String).input(),
      backendId: (map['backendId'] as String).input(),
      codebase: map['codebase'] == null ? null : (AppHostingBackendCodebase.fromMap((map['codebase'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      environment: map['environment'] == null ? null : (map['environment'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceAccount: (map['serviceAccount'] as String).input(),
      servingLocality: (map['servingLocality'] as String).input(),
    );
  }
}

