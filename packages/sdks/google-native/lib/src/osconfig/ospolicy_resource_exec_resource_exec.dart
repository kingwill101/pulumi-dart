// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_exec_resource_exec_interpreter.dart';
import 'ospolicy_resource_file.dart';

/// A file or script to execute.
class OSPolicyResourceExecResourceExec {
  /// Optional arguments to pass to the source during execution.
  final pulumi.Input<List<String>>? args;
  /// A remote or local file.
  final pulumi.Input<OSPolicyResourceFile>? file;
  /// The script interpreter to use.
  final pulumi.Input<OSPolicyResourceExecResourceExecInterpreter> interpreter;
  /// Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes.
  final pulumi.Input<String>? outputFilePath;
  /// An inline script. The size of the script is limited to 32KiB.
  final pulumi.Input<String>? script;

  /// Creates a new [OSPolicyResourceExecResourceExec].
  /// [args] Optional arguments to pass to the source during execution.
  /// [file] A remote or local file.
  /// [interpreter] The script interpreter to use.
  /// [outputFilePath] Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes.
  /// [script] An inline script. The size of the script is limited to 32KiB.
  OSPolicyResourceExecResourceExec({
    this.args,
    this.file,
    required this.interpreter,
    this.outputFilePath,
    this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'file': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'interpreter': pulumi.Input.mapInputValue<OSPolicyResourceExecResourceExecInterpreter, String>(interpreter, (value) => value.value),
      'outputFilePath': ?outputFilePath,
      'script': ?script,
    };
  }

  factory OSPolicyResourceExecResourceExec.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceExecResourceExec(
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      file: map['file'] == null ? null : (OSPolicyResourceFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input(),
      interpreter: (OSPolicyResourceExecResourceExecInterpreter.fromValue(map['interpreter'] as String)).input(),
      outputFilePath: map['outputFilePath'] == null ? null : (map['outputFilePath']! as String).input(),
      script: map['script'] == null ? null : (map['script']! as String).input(),
    );
  }
}

