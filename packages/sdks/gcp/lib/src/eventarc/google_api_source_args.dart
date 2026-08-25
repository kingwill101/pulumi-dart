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
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String?>? cryptoKeyName;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Destination is the message bus that the GoogleApiSource is delivering to.
  /// It must be point to the full resource name of a MessageBus. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/messagesBuses/{MESSAGE_BUS_ID)
  final pulumi.Input<String> destination;
  /// Resource display name.
  final pulumi.Input<String?>? displayName;
  /// The user-provided ID to be assigned to the GoogleApiSource. It should match
  /// the format `^a-z?$`.
  final pulumi.Input<String> googleApiSourceId;
  /// Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  final pulumi.Input<GoogleApiSourceLoggingConfig?>? loggingConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GoogleApiSourceArgs].
  /// [annotations] Resource annotations.
  /// [cryptoKeyName] Resource name of a KMS crypto key (managed by the user) used to
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [destination] Destination is the message bus that the GoogleApiSource is delivering to.
  /// [displayName] Resource display name.
  /// [googleApiSourceId] The user-provided ID to be assigned to the GoogleApiSource. It should match
  /// [labels] Resource labels.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [loggingConfig] The configuration for Platform Telemetry logging for Eventarc Advanced
  /// [project] The ID of the project in which the resource belongs.
  const GoogleApiSourceArgs({
    this.annotations,
    this.cryptoKeyName,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      cryptoKeyName: (() { final guardedValue = map['cryptoKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleApiSourceId: pulumi.Input.fromValue(map['googleApiSourceId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleApiSourceLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
