// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_response_osconfig_v1alpha.dart';

/// A file or script to execute.
class OSPolicyResourceExecResourceExecResponseOsconfigV1alpha {
  /// Optional arguments to pass to the source during execution.
  final pulumi.Input<List<String>> args;
  /// A remote or local file.
  final pulumi.Input<OSPolicyResourceFileResponseOsconfigV1alpha> file;
  /// The script interpreter to use.
  final pulumi.Input<String> interpreter;
  /// Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes.
  final pulumi.Input<String> outputFilePath;
  /// An inline script. The size of the script is limited to 32KiB.
  final pulumi.Input<String> script;

  /// Creates a new [OSPolicyResourceExecResourceExecResponseOsconfigV1alpha].
  /// [args] Optional arguments to pass to the source during execution.
  /// [file] A remote or local file.
  /// [interpreter] The script interpreter to use.
  /// [outputFilePath] Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes.
  /// [script] An inline script. The size of the script is limited to 32KiB.
  const OSPolicyResourceExecResourceExecResponseOsconfigV1alpha({
    required this.args,
    required this.file,
    required this.interpreter,
    required this.outputFilePath,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'file': pulumi.Input.mapInputValue<OSPolicyResourceFileResponseOsconfigV1alpha, Map<String, dynamic>>(file, (value) => value.toMap()),
      'interpreter': interpreter,
      'outputFilePath': outputFilePath,
      'script': script,
    };
  }

  factory OSPolicyResourceExecResourceExecResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceExecResourceExecResponseOsconfigV1alpha(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      file: pulumi.Input.fromValue(OSPolicyResourceFileResponseOsconfigV1alpha.fromMap((map['file']! as Map).cast<String, dynamic>())),
      interpreter: pulumi.Input.fromValue(map['interpreter'] as String),
      outputFilePath: pulumi.Input.fromValue(map['outputFilePath'] as String),
      script: pulumi.Input.fromValue(map['script'] as String),
    );
  }
}
