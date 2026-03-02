// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_directory_role_eligibility_schedule_request_directory_role_eligibility_schedule_request_args_doc}
/// The set of arguments for DirectoryRoleEligibilityScheduleRequest.
/// {@endtemplate}
/// {@macro pulumi_index_directory_role_eligibility_schedule_request_directory_role_eligibility_schedule_request_args_doc}
class DirectoryRoleEligibilityScheduleRequestArgs {
  /// Identifier of the directory object representing the scope of the role eligibility. Changing this forces a new resource to be created.
  final pulumi.Input<String> directoryScopeId;
  /// Justification for why the principal is granted the role eligibility. Changing this forces a new resource to be created.
  final pulumi.Input<String> justification;
  /// The object ID of the principal to granted the role eligibility. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalId;
  /// The template ID (in the case of built-in roles) or object ID (in the case of custom roles) of the directory role you want to assign. Changing this forces a new resource to be created.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [DirectoryRoleEligibilityScheduleRequestArgs].
  /// [directoryScopeId] Identifier of the directory object representing the scope of the role eligibility. Changing this forces a new resource to be created.
  /// [justification] Justification for why the principal is granted the role eligibility. Changing this forces a new resource to be created.
  /// [principalId] The object ID of the principal to granted the role eligibility. Changing this forces a new resource to be created.
  /// [roleDefinitionId] The template ID (in the case of built-in roles) or object ID (in the case of custom roles) of the directory role you want to assign. Changing this forces a new resource to be created.
  DirectoryRoleEligibilityScheduleRequestArgs({
    required this.directoryScopeId,
    required this.justification,
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryScopeId': directoryScopeId,
      'justification': justification,
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory DirectoryRoleEligibilityScheduleRequestArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryRoleEligibilityScheduleRequestArgs(
      directoryScopeId: (map['directoryScopeId'] as String).input(),
      justification: (map['justification'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      roleDefinitionId: (map['roleDefinitionId'] as String).input(),
    );
  }
}

