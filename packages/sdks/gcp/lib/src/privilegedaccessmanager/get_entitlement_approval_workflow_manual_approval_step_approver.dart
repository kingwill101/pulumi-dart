// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEntitlementApprovalWorkflowManualApprovalStepApprover {
  /// Users who are being allowed for the operation. Each entry should be a valid v1 IAM Principal Identifier. Format for these is documented at: https://cloud.google.com/iam/docs/principal-identifiers#v1
  final pulumi.Input<List<String>> principals;

  /// Creates a new [GetEntitlementApprovalWorkflowManualApprovalStepApprover].
  /// [principals] Users who are being allowed for the operation. Each entry should be a valid v1 IAM Principal Identifier. Format for these is documented at: https://cloud.google.com/iam/docs/principal-identifiers#v1
  const GetEntitlementApprovalWorkflowManualApprovalStepApprover({
    required this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principals': principals,
    };
  }

  factory GetEntitlementApprovalWorkflowManualApprovalStepApprover.fromMap(Map<String, dynamic> map) {
    return GetEntitlementApprovalWorkflowManualApprovalStepApprover(
      principals: pulumi.Input.fromValue((map['principals'] as List).cast<String>()),
    );
  }
}

