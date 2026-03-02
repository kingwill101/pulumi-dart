// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AWSOIDCConfiguration {
  /// Duration of the assume-role session in “XhYmZs” format
  final pulumi.Input<String>? duration;
  /// Optional set of IAM policy ARNs that further restrict the assume-role session
  final pulumi.Input<List<String>>? policyARNs;
  /// The ARN of the role to assume using the OIDC token.
  final pulumi.Input<String> roleARN;
  /// The name of the assume-role session.
  final pulumi.Input<String> sessionName;

  /// Creates a new [AWSOIDCConfiguration].
  /// [duration] Duration of the assume-role session in “XhYmZs” format
  /// [policyARNs] Optional set of IAM policy ARNs that further restrict the assume-role session
  /// [roleARN] The ARN of the role to assume using the OIDC token.
  /// [sessionName] The name of the assume-role session.
  AWSOIDCConfiguration({
    this.duration,
    this.policyARNs,
    required this.roleARN,
    required this.sessionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'policyARNs': ?policyARNs,
      'roleARN': roleARN,
      'sessionName': sessionName,
    };
  }

  factory AWSOIDCConfiguration.fromMap(Map<String, dynamic> map) {
    return AWSOIDCConfiguration(
      duration: map['duration'] == null ? null : (map['duration'] as String).input(),
      policyARNs: map['policyARNs'] == null ? null : ((map['policyARNs'] as List).cast<String>()).input(),
      roleARN: (map['roleARN'] as String).input(),
      sessionName: (map['sessionName'] as String).input(),
    );
  }
}

