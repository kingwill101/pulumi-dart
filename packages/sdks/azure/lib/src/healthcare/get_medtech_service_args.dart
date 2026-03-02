// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_get_medtech_service_get_medtech_service_args_doc}
/// Arguments for getMedtechService.
/// {@endtemplate}
/// {@macro pulumi_healthcare_get_medtech_service_get_medtech_service_args_doc}
class GetMedtechServiceArgs {
  /// The name of the Healthcare Med Tech Service.
  final pulumi.Input<String> name;
  /// The id of the Healthcare Workspace in which the Healthcare Med Tech Service exists.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetMedtechServiceArgs].
  /// [name] The name of the Healthcare Med Tech Service.
  /// [workspaceId] The id of the Healthcare Workspace in which the Healthcare Med Tech Service exists.
  GetMedtechServiceArgs({
    required this.name,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'workspaceId': workspaceId,
    };
  }

  factory GetMedtechServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetMedtechServiceArgs(
      name: (map['name'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

