// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_api_source_logging_config.dart';

/// {@template pulumi_eventarc_google_api_source_google_api_source_args_doc}
/// The set of arguments for GoogleApiSource.
/// {@endtemplate}
/// {@macro pulumi_eventarc_google_api_source_google_api_source_args_doc}
class GoogleApiSourceArgs {
  /// Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;
  /// Destination is the message bus that the GoogleApiSource is delivering to.
  /// It must be point to the full resource name of a MessageBus. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/messagesBuses/{MESSAGE_BUS_ID)
  final pulumi.Input<String> destination;
  /// Resource display name.
  final pulumi.Input<String>? displayName;
  /// The user-provided ID to be assigned to the GoogleApiSource. It should match
  /// the format `^a-z?$`.
  final pulumi.Input<String> googleApiSourceId;
  /// Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  final pulumi.Input<GoogleApiSourceLoggingConfig>? loggingConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GoogleApiSourceArgs].
  /// [annotations] Resource annotations.
  /// [cryptoKeyName] Resource name of a KMS crypto key (managed by the user) used to
  /// [destination] Destination is the message bus that the GoogleApiSource is delivering to.
  /// [displayName] Resource display name.
  /// [googleApiSourceId] The user-provided ID to be assigned to the GoogleApiSource. It should match
  /// [labels] Resource labels.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [loggingConfig] The configuration for Platform Telemetry logging for Eventarc Advanced
  /// [project] The ID of the project in which the resource belongs.
  GoogleApiSourceArgs({
    this.annotations,
    this.cryptoKeyName,
    required this.destination,
    this.displayName,
    required this.googleApiSourceId,
    this.labels,
    required this.location,
    this.loggingConfig,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'cryptoKeyName': ?cryptoKeyName,
      'destination': destination,
      'displayName': ?displayName,
      'googleApiSourceId': googleApiSourceId,
      'labels': ?labels,
      'location': location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleApiSourceLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory GoogleApiSourceArgs.fromMap(Map<String, dynamic> map) {
    return GoogleApiSourceArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      cryptoKeyName: map['cryptoKeyName'] == null ? null : (map['cryptoKeyName']! as String).input(),
      destination: (map['destination'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      googleApiSourceId: (map['googleApiSourceId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (GoogleApiSourceLoggingConfig.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

