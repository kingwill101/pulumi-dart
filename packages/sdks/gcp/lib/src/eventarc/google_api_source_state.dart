// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_api_source_logging_config.dart';

/// Input properties used for looking up and filtering GoogleApiSource resources.
class GoogleApiSourceState {
  /// Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The creation time.
  final pulumi.Input<String>? createTime;
  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;
  /// Destination is the message bus that the GoogleApiSource is delivering to.
  /// It must be point to the full resource name of a MessageBus. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/messagesBuses/{MESSAGE_BUS_ID)
  final pulumi.Input<String>? destination;
  /// Resource display name.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure that
  /// the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// The user-provided ID to be assigned to the GoogleApiSource. It should match
  /// the format `^a-z?$`.
  final pulumi.Input<String>? googleApiSourceId;
  /// Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  final pulumi.Input<GoogleApiSourceLoggingConfig>? loggingConfig;
  /// Resource name of the form
  /// projects/{project}/locations/{location}/googleApiSources/{google_api_source}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Server assigned unique identifier for the channel. The value is a UUID4
  /// string and guaranteed to remain unchanged until the resource is deleted.
  final pulumi.Input<String>? uid;
  /// The last-modified time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GoogleApiSourceState].
  /// [annotations] Resource annotations.
  /// [createTime] The creation time.
  /// [cryptoKeyName] Resource name of a KMS crypto key (managed by the user) used to
  /// [destination] Destination is the message bus that the GoogleApiSource is delivering to.
  /// [displayName] Resource display name.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] This checksum is computed by the server based on the value of other
  /// [googleApiSourceId] The user-provided ID to be assigned to the GoogleApiSource. It should match
  /// [labels] Resource labels.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [loggingConfig] The configuration for Platform Telemetry logging for Eventarc Advanced
  /// [name] Resource name of the form
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [uid] Server assigned unique identifier for the channel. The value is a UUID4
  /// [updateTime] The last-modified time.
  GoogleApiSourceState({
    this.annotations,
    this.createTime,
    this.cryptoKeyName,
    this.destination,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.googleApiSourceId,
    this.labels,
    this.location,
    this.loggingConfig,
    this.name,
    this.project,
    this.pulumiLabels,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'cryptoKeyName': ?cryptoKeyName,
      'destination': ?destination,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'googleApiSourceId': ?googleApiSourceId,
      'labels': ?labels,
      'location': ?location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleApiSourceLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GoogleApiSourceState.fromMap(Map<String, dynamic> map) {
    return GoogleApiSourceState(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      cryptoKeyName: map['cryptoKeyName'] == null ? null : (map['cryptoKeyName']! as String).input(),
      destination: map['destination'] == null ? null : (map['destination']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      googleApiSourceId: map['googleApiSourceId'] == null ? null : (map['googleApiSourceId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (GoogleApiSourceLoggingConfig.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

