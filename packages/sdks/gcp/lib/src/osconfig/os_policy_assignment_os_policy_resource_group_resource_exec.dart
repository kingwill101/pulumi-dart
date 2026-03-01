// ignore_for_file: unused_element, unnecessary_cast

import 'os_policy_assignment_os_policy_resource_group_resource_exec_enforce.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_exec_validate.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourceExec {
  /// What to run to bring this resource into the desired
  /// state. An exit code of 100 indicates "success", any other exit code
  /// indicates a failure running enforce. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforce? enforce;
  /// What to run to validate this resource is in the
  /// desired state. An exit code of 100 indicates "in desired state", and exit
  /// code of 101 indicates "not in desired state". Any other exit code indicates
  /// a failure running validate. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidate validate;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourceExec].
  /// [enforce] What to run to bring this resource into the desired
  /// [validate] What to run to validate this resource is in the
  OsPolicyAssignmentOsPolicyResourceGroupResourceExec({
    this.enforce,
    required this.validate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforce': ?enforce == null ? null : enforce!.toMap(),
      'validate': validate.toMap(),
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceExec.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceExec(
      enforce: map['enforce'] == null ? null : OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforce.fromMap((map['enforce'] as Map).cast<String, dynamic>()),
      validate: OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidate.fromMap((map['validate'] as Map).cast<String, dynamic>()),
    );
  }
}

