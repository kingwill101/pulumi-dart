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
  /// [displayName] Name used for UI elements listing this Service.
  /// [name] The full resource name for this service. The syntax is:
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] An optional service ID to use. If not given, the server will generate a
  /// [telemetries] Configuration for how to query telemetry on a Service.
  /// [userLabels] Labels which have been used to annotate the service. Label keys must start
  GenericServiceState({
    this.basicService,
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
      basicService: map['basicService'] == null ? null : (GenericServiceBasicService.fromMap((map['basicService'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId'] as String).input(),
      telemetries: map['telemetries'] == null ? null : (pulumi.Input.decodeList<GenericServiceTelemetry>(map['telemetries'], (value) => GenericServiceTelemetry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userLabels: map['userLabels'] == null ? null : ((map['userLabels'] as Map).cast<String, String>()).input(),
    );
  }
}

