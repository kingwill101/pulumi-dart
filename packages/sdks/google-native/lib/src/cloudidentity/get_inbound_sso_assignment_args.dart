// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1_get_inbound_sso_assignment_args_doc}
/// Arguments for getInboundSsoAssignment.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1_get_inbound_sso_assignment_args_doc}
class GetInboundSsoAssignmentArgs {
  final pulumi.Input<String> inboundSsoAssignmentId;

  /// Creates a new [GetInboundSsoAssignmentArgs].
  /// [inboundSsoAssignmentId] Required.
  GetInboundSsoAssignmentArgs({
    required pulumi.Output<String> inboundSsoAssignmentId,
  }) :
      inboundSsoAssignmentId = pulumi.Input.asInput<String>(inboundSsoAssignmentId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundSsoAssignmentId': inboundSsoAssignmentId,
    };
  }

  factory GetInboundSsoAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundSsoAssignmentArgs(
      inboundSsoAssignmentId: pulumi.Output.create<String>(map['inboundSsoAssignmentId'] as String),
    );
  }
}

