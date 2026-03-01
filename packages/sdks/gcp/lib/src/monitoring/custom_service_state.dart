// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_service_telemetry.dart';

/// Input properties used for looking up and filtering CustomService resources.
class CustomServiceState {
  /// Name used for UI elements listing this Service.
  final pulumi.Input<String>? displayName;
  /// The full resource name for this service. The syntax is:
  /// projects/[PROJECT_ID]/services/[SERVICE_ID].
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// An optional service ID to use. If not given, the server will generate a
  /// service ID.
  final pulumi.Input<String>? serviceId;
  /// Configuration for how to query telemetry on a Service.
  /// Structure is documented below.
  final pulumi.Input<CustomServiceTelemetry>? telemetry;
  /// Labels which have been used to annotate the service. Label keys must start
  /// with a letter. Label keys and values may contain lowercase letters,
  /// numbers, underscores, and dashes. Label keys and values have a maximum
  /// length of 63 characters, and must be less than 128 bytes in size. Up to 64
  /// label entries may be stored. For labels which do not have a semantic value,
  /// the empty string may be supplied for the label value.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [CustomServiceState].
  /// [displayName] Name used for UI elements listing this Service.
  /// [name] The full resource name for this service. The syntax is:
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] An optional service ID to use. If not given, the server will generate a
  /// [telemetry] Configuration for how to query telemetry on a Service.
  /// [userLabels] Labels which have been used to annotate the service. Label keys must start
  CustomServiceState({
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? serviceId,
    pulumi.Output<CustomServiceTelemetry>? telemetry,
    pulumi.Output<Map<String, String>>? userLabels,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      telemetry = pulumi.Input.asOptionalInput<CustomServiceTelemetry>(telemetry),
      userLabels = pulumi.Input.asOptionalInput<Map<String, String>>(userLabels);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
      'serviceId': ?serviceId,
      'telemetry': ?pulumi.Input.mapOptionalInputValue<CustomServiceTelemetry, Map<String, dynamic>>(telemetry, (value) => value.toMap()),
      'userLabels': ?userLabels,
    };
  }

  factory CustomServiceState.fromMap(Map<String, dynamic> map) {
    return CustomServiceState(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      telemetry: map['telemetry'] == null ? null : pulumi.Output.create<CustomServiceTelemetry>(CustomServiceTelemetry.fromMap((map['telemetry'] as Map).cast<String, dynamic>())),
      userLabels: map['userLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['userLabels'] as Map).cast<String, String>()),
    );
  }
}

