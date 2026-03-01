// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DirectoryRoleEligibilityScheduleRequest resources.
class DirectoryRoleEligibilityScheduleRequestState {
  /// Identifier of the directory object representing the scope of the role eligibility. Changing this forces a new resource to be created.
  final pulumi.Input<String>? directoryScopeId;
  /// Justification for why the principal is granted the role eligibility. Changing this forces a new resource to be created.
  final pulumi.Input<String>? justification;
  /// The object ID of the principal to granted the role eligibility. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalId;
  /// The template ID (in the case of built-in roles) or object ID (in the case of custom roles) of the directory role you want to assign. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleDefinitionId;

  /// Creates a new [DirectoryRoleEligibilityScheduleRequestState].
  /// [directoryScopeId] Identifier of the directory object representing the scope of the role eligibility. Changing this forces a new resource to be created.
  /// [justification] Justification for why the principal is granted the role eligibility. Changing this forces a new resource to be created.
  /// [principalId] The object ID of the principal to granted the role eligibility. Changing this forces a new resource to be created.
  /// [roleDefinitionId] The template ID (in the case of built-in roles) or object ID (in the case of custom roles) of the directory role you want to assign. Changing this forces a new resource to be created.
  DirectoryRoleEligibilityScheduleRequestState({
    pulumi.Output<String>? directoryScopeId,
    pulumi.Output<String>? justification,
    pulumi.Output<String>? principalId,
    pulumi.Output<String>? roleDefinitionId,
  }) :
      directoryScopeId = pulumi.Input.asOptionalInput<String>(directoryScopeId),
      justification = pulumi.Input.asOptionalInput<String>(justification),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      roleDefinitionId = pulumi.Input.asOptionalInput<String>(roleDefinitionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryScopeId': ?directoryScopeId,
      'justification': ?justification,
      'principalId': ?principalId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory DirectoryRoleEligibilityScheduleRequestState.fromMap(Map<String, dynamic> map) {
    return DirectoryRoleEligibilityScheduleRequestState(
      directoryScopeId: map['directoryScopeId'] == null ? null : pulumi.Output.create<String>(map['directoryScopeId'] as String),
      justification: map['justification'] == null ? null : pulumi.Output.create<String>(map['justification'] as String),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionId'] as String),
    );
  }
}

