// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_build_error.dart';
import 'app_hosting_build_source.dart';

/// Input properties used for looking up and filtering AppHostingBuild resources.
class AppHostingBuildState {
  /// Unstructured key value map that may be set by external tools to
  /// store and arbitrary metadata. They are not queryable and should be
  /// preserved when modifying objects.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// The ID of the Backend that this Build applies to
  final pulumi.Input<String>? backend;

  /// The user-specified ID of the build being created.
  final pulumi.Input<String>? buildId;

  /// The location of the [Cloud Build
  /// logs](https://cloud.google.com/build/docs/view-build-results) for the build
  /// process.
  final pulumi.Input<String>? buildLogsUri;

  /// Time at which the build was created.
  final pulumi.Input<String>? createTime;

  /// Human-readable name. 63 character limit.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// The environment name of the backend when this build was created.
  final pulumi.Input<String>? environment;

  /// The source of the error for the build, if in a `FAILED` state.
  /// Possible values:
  /// CLOUD_BUILD
  /// CLOUD_RUN
  final pulumi.Input<String>? errorSource;

  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  final pulumi.Input<List<AppHostingBuildError>>? errors;

  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  final pulumi.Input<String>? etag;

  /// The Artifact Registry
  /// [container
  /// image](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages)
  /// URI, used by the Cloud Run
  /// [`revision`](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services.revisions)
  /// for this build.
  final pulumi.Input<String>? image;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the Backend that this Build applies to
  final pulumi.Input<String>? location;

  /// Identifier. The resource name of the build.
  /// Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/builds/{buildId}`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// The source for the build.
  /// Structure is documented below.
  final pulumi.Input<AppHostingBuildSource>? source;

  /// The state of the build.
  /// Possible values:
  /// BUILDING
  /// BUILT
  /// DEPLOYING
  /// READY
  /// FAILED
  final pulumi.Input<String>? state;

  /// System-assigned, unique identifier.
  final pulumi.Input<String>? uid;

  /// Time at which the build was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AppHostingBuildState].
  /// [annotations] Unstructured key value map that may be set by external tools to
  /// [backend] The ID of the Backend that this Build applies to
  /// [buildId] The user-specified ID of the build being created.
  /// [buildLogsUri] The location of the [Cloud Build
  /// [createTime] Time at which the build was created.
  /// [displayName] Human-readable name. 63 character limit.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [environment] The environment name of the backend when this build was created.
  /// [errorSource] The source of the error for the build, if in a `FAILED` state.
  /// [errors] The `Status` type defines a logical error model that is suitable for
  /// [etag] Server-computed checksum based on other values; may be sent
  /// [image] The Artifact Registry
  /// [labels] Unstructured key value map that can be used to organize and categorize
  /// [location] The location of the Backend that this Build applies to
  /// [name] Identifier. The resource name of the build.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [source] The source for the build.
  /// [state] The state of the build.
  /// [uid] System-assigned, unique identifier.
  /// [updateTime] Time at which the build was last updated.
  AppHostingBuildState({
    this.annotations,
    this.backend,
    this.buildId,
    this.buildLogsUri,
    this.createTime,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.environment,
    this.errorSource,
    this.errors,
    this.etag,
    this.image,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.source,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'backend': ?backend,
      'buildId': ?buildId,
      'buildLogsUri': ?buildLogsUri,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'environment': ?environment,
      'errorSource': ?errorSource,
      'errors':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppHostingBuildError>,
            List<Map<String, dynamic>>
          >(
            errors,
            (value) =>
                pulumi.Input.encodeList<
                  AppHostingBuildError,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'etag': ?etag,
      'image': ?image,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'source':
          ?pulumi.Input.mapOptionalInputValue<
            AppHostingBuildSource,
            Map<String, dynamic>
          >(source, (value) => value.toMap()),
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory AppHostingBuildState.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildState(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      backend: (() {
        final guardedValue = map['backend'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      buildId: (() {
        final guardedValue = map['buildId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      buildLogsUri: (() {
        final guardedValue = map['buildLogsUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveAnnotations: (() {
        final guardedValue = map['effectiveAnnotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      environment: (() {
        final guardedValue = map['environment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorSource: (() {
        final guardedValue = map['errorSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errors: (() {
        final guardedValue = map['errors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppHostingBuildError>(
            guardedValue,
            (value) => AppHostingBuildError.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppHostingBuildSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
