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
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? cryptoKeyName,
    required pulumi.Output<String> destination,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> googleApiSourceId,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<GoogleApiSourceLoggingConfig>? loggingConfig,
    pulumi.Output<String>? project,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      cryptoKeyName = pulumi.Input.asOptionalInput<String>(cryptoKeyName),
      destination = pulumi.Input.asInput<String>(destination),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      googleApiSourceId = pulumi.Input.asInput<String>(googleApiSourceId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      loggingConfig = pulumi.Input.asOptionalInput<GoogleApiSourceLoggingConfig>(loggingConfig),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      cryptoKeyName: map['cryptoKeyName'] == null ? null : pulumi.Output.create<String>(map['cryptoKeyName'] as String),
      destination: pulumi.Output.create<String>(map['destination'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      googleApiSourceId: pulumi.Output.create<String>(map['googleApiSourceId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      loggingConfig: map['loggingConfig'] == null ? null : pulumi.Output.create<GoogleApiSourceLoggingConfig>(GoogleApiSourceLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

