// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generic_service_basic_service.dart';

/// {@template pulumi_monitoring_generic_service_generic_service_args_doc}
/// The set of arguments for GenericService.
/// {@endtemplate}
/// {@macro pulumi_monitoring_generic_service_generic_service_args_doc}
class GenericServiceArgs {
  /// A well-known service type, defined by its service type and service labels.
  /// Valid values of service types and services labels are described at
  /// https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli
  /// Structure is documented below.
  final pulumi.Input<GenericServiceBasicService>? basicService;
  /// Name used for UI elements listing this Service.
  final pulumi.Input<String>? displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// An optional service ID to use. If not given, the server will generate a
  /// service ID.
  final pulumi.Input<String> serviceId;
  /// Labels which have been used to annotate the service. Label keys must start
  /// with a letter. Label keys and values may contain lowercase letters,
  /// numbers, underscores, and dashes. Label keys and values have a maximum
  /// length of 63 characters, and must be less than 128 bytes in size. Up to 64
  /// label entries may be stored. For labels which do not have a semantic value,
  /// the empty string may be supplied for the label value.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [GenericServiceArgs].
  /// [basicService] A well-known service type, defined by its service type and service labels.
  /// [displayName] Name used for UI elements listing this Service.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] An optional service ID to use. If not given, the server will generate a
  /// [userLabels] Labels which have been used to annotate the service. Label keys must start
  GenericServiceArgs({
    this.basicService,
    this.displayName,
    this.project,
    required this.serviceId,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicService': ?pulumi.Input.mapOptionalInputValue<GenericServiceBasicService, Map<String, dynamic>>(basicService, (value) => value.toMap()),
      'displayName': ?displayName,
      'project': ?project,
      'serviceId': serviceId,
      'userLabels': ?userLabels,
    };
  }

  factory GenericServiceArgs.fromMap(Map<String, dynamic> map) {
    return GenericServiceArgs(
      basicService: map['basicService'] == null ? null : (GenericServiceBasicService.fromMap((map['basicService']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      serviceId: (map['serviceId'] as String).input(),
      userLabels: map['userLabels'] == null ? null : ((map['userLabels']! as Map).cast<String, String>()).input(),
    );
  }
}

