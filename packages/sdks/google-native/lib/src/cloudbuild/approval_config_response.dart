// ignore_for_file: unused_element, unnecessary_cast


/// ApprovalConfig describes configuration for manual approval of a build.
class ApprovalConfigResponse {
  /// Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start.
  final bool approvalRequired;

  /// Creates a new [ApprovalConfigResponse].
  /// [approvalRequired] Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start.
  ApprovalConfigResponse({
    required this.approvalRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRequired': approvalRequired,
    };
  }

  factory ApprovalConfigResponse.fromMap(Map<String, dynamic> map) {
    return ApprovalConfigResponse(
      approvalRequired: map['approvalRequired'] as bool,
    );
  }
}

