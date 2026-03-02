// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_service_telemetry.dart';

/// {@template pulumi_monitoring_custom_service_custom_service_args_doc}
/// The set of arguments for CustomService.
/// {@endtemplate}
/// {@macro pulumi_monitoring_custom_service_custom_service_args_doc}
class CustomServiceArgs {
  /// Name used for UI elements listing this Service.
  final pulumi.Input<String>? displayName;
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

  /// Creates a new [CustomServiceArgs].
  /// [displayName] Name used for UI elements listing this Service.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] An optional service ID to use. If not given, the server will generate a
  /// [telemetry] Configuration for how to query telemetry on a Service.
  /// [userLabels] Labels which have been used to annotate the service. Label keys must start
  CustomServiceArgs({
    this.displayName,
    this.project,
    this.serviceId,
    this.telemetry,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'project': ?project,
      'serviceId': ?serviceId,
      'telemetry': ?pulumi.Input.mapOptionalInputValue<CustomServiceTelemetry, Map<String, dynamic>>(telemetry, (value) => value.toMap()),
      'userLabels': ?userLabels,
    };
  }

  factory CustomServiceArgs.fromMap(Map<String, dynamic> map) {
    return CustomServiceArgs(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId'] as String).input(),
      telemetry: map['telemetry'] == null ? null : (CustomServiceTelemetry.fromMap((map['telemetry'] as Map).cast<String, dynamic>())).input(),
      userLabels: map['userLabels'] == null ? null : ((map['userLabels'] as Map).cast<String, String>()).input(),
    );
  }
}

