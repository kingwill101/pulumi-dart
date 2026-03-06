// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobBinaryAuthorization {
  /// If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  final pulumi.Input<String> breakglassJustification;
  /// The path to a binary authorization policy. Format: projects/{project}/platforms/cloudRun/{policy-name}
  final pulumi.Input<String> policy;
  /// If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  final pulumi.Input<bool> useDefault;

  /// Creates a new [GetJobBinaryAuthorization].
  /// [breakglassJustification] If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  /// [policy] The path to a binary authorization policy. Format: projects/{project}/platforms/cloudRun/{policy-name}
  /// [useDefault] If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  const GetJobBinaryAuthorization({
    required this.breakglassJustification,
    required this.policy,
    required this.useDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakglassJustification': breakglassJustification,
      'policy': policy,
      'useDefault': useDefault,
    };
  }

  factory GetJobBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return GetJobBinaryAuthorization(
      breakglassJustification: pulumi.Input.fromValue(map['breakglassJustification'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      useDefault: pulumi.Input.fromValue(map['useDefault'] as bool),
    );
  }
}

