// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generic_service_basic_service.dart';
import 'generic_service_telemetry.dart';

/// Input properties used for looking up and filtering GenericService resources.
class GenericServiceState {
  /// A well-known service type, defined by its service type and service labels.
  /// Valid values of service types and services labels are described at
  /// https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli
  /// Structure is documented below.
  final pulumi.Input<GenericServiceBasicService>? basicService;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  final pulumi.Input<List<GenericServiceTelemetry>>? telemetries;
  /// Labels which have been used to annotate the service. Label keys must start
  /// with a letter. Label keys and values may contain lowercase letters,
  /// numbers, underscores, and dashes. Label keys and values have a maximum
  /// length of 63 characters, and must be less than 128 bytes in size. Up to 64
  /// label entries may be stored. For labels which do not have a semantic value,
  /// the empty string may be supplied for the label value.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [GenericServiceState].
  /// [basicService] A well-known service type, defined by its service type and service labels.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Name used for UI elements listing this Service.
  /// [name] The full resource name for this service. The syntax is:
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] An optional service ID to use. If not given, the server will generate a
  /// [telemetries] Configuration for how to query telemetry on a Service.
  /// [userLabels] Labels which have been used to annotate the service. Label keys must start
  const GenericServiceState({
    this.basicService,
    this.deletionPolicy,
    this.displayName,
    this.name,
    this.project,
    this.serviceId,
    this.telemetries,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicService': ?pulumi.Input.mapOptionalInputValue<GenericServiceBasicService, Map<String, dynamic>>(basicService, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
      'serviceId': ?serviceId,
      'telemetries': ?pulumi.Input.mapOptionalInputValue<List<GenericServiceTelemetry>, List<Map<String, dynamic>>>(telemetries, (value) => pulumi.Input.encodeList<GenericServiceTelemetry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userLabels': ?userLabels,
    };
  }

  factory GenericServiceState.fromMap(Map<String, dynamic> map) {
    return GenericServiceState(
      basicService: (() { final guardedValue = map['basicService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GenericServiceBasicService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      telemetries: (() { final guardedValue = map['telemetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GenericServiceTelemetry>(guardedValue, (value) => GenericServiceTelemetry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
