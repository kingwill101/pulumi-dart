// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_exec_resource_exec_interpreter_osconfig_v1alpha.dart';
import 'ospolicy_resource_file_osconfig_v1alpha.dart';

/// A file or script to execute.
class OSPolicyResourceExecResourceExecOsconfigV1alpha {
  /// Optional arguments to pass to the source during execution.
  final pulumi.Input<List<String>>? args;
  /// A remote or local file.
  final pulumi.Input<OSPolicyResourceFileOsconfigV1alpha>? file;
  /// The script interpreter to use.
  final pulumi.Input<OSPolicyResourceExecResourceExecInterpreterOsconfigV1alpha> interpreter;
  /// Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes.
  final pulumi.Input<String>? outputFilePath;
  /// An inline script. The size of the script is limited to 32KiB.
  final pulumi.Input<String>? script;

  /// Creates a new [OSPolicyResourceExecResourceExecOsconfigV1alpha].
  /// [args] Optional arguments to pass to the source during execution.
  /// [file] A remote or local file.
  /// [interpreter] The script interpreter to use.
  /// [outputFilePath] Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes.
  /// [script] An inline script. The size of the script is limited to 32KiB.
  OSPolicyResourceExecResourceExecOsconfigV1alpha({
    this.args,
    this.file,
    required this.interpreter,
    this.outputFilePath,
    this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'file': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceFileOsconfigV1alpha, Map<String, dynamic>>(file, (value) => value.toMap()),
      'interpreter': pulumi.Input.mapInputValue<OSPolicyResourceExecResourceExecInterpreterOsconfigV1alpha, String>(interpreter, (value) => value.wireValue),
      'outputFilePath': ?outputFilePath,
      'script': ?script,
    };
  }

  factory OSPolicyResourceExecResourceExecOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceExecResourceExecOsconfigV1alpha(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceFileOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interpreter: pulumi.Input.fromValue(OSPolicyResourceExecResourceExecInterpreterOsconfigV1alpha.fromValue(map['interpreter']! as String)),
      outputFilePath: (() { final guardedValue = map['outputFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

