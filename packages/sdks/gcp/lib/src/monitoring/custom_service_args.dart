// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_service_telemetry.dart';

/// {@template pulumi_monitoring_custom_service_custom_service_args_doc}
/// The set of arguments for CustomService.
/// {@endtemplate}
/// {@macro pulumi_monitoring_custom_service_custom_service_args_doc}
class CustomServiceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Name used for UI elements listing this Service.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] An optional service ID to use. If not given, the server will generate a
  /// [telemetry] Configuration for how to query telemetry on a Service.
  /// [userLabels] Labels which have been used to annotate the service. Label keys must start
  const CustomServiceArgs({
    this.deletionPolicy,
    this.displayName,
    this.project,
    this.serviceId,
    this.telemetry,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'project': ?project,
      'serviceId': ?serviceId,
      'telemetry': ?pulumi.Input.mapOptionalInputValue<CustomServiceTelemetry, Map<String, dynamic>>(telemetry, (value) => value.toMap()),
      'userLabels': ?userLabels,
    };
  }

  factory CustomServiceArgs.fromMap(Map<String, dynamic> map) {
    return CustomServiceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      telemetry: (() { final guardedValue = map['telemetry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomServiceTelemetry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
