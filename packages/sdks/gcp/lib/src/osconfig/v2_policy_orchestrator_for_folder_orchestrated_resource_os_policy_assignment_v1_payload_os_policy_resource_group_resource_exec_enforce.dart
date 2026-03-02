// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_exec_enforce_file.dart';

class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforce {
  /// Optional arguments to pass to the source during execution.
  final pulumi.Input<List<String>>? args;
  /// A remote or local file.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforceFile>? file;
  /// The script interpreter to use.
  /// Possible values are: `NONE`, `SHELL`, `POWERSHELL`.
  final pulumi.Input<String> interpreter;
  /// Only recorded for enforce Exec.
  /// Path to an output file (that is created by this Exec) whose
  /// content will be recorded in OSPolicyResourceCompliance after a
  /// successful run. Absence or failure to read this file will result in
  /// this ExecResource being non-compliant. Output file size is limited to
  /// 500K bytes.
  final pulumi.Input<String>? outputFilePath;
  /// An inline script.
  /// The size of the script is limited to 32KiB.
  final pulumi.Input<String>? script;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforce].
  /// [args] Optional arguments to pass to the source during execution.
  /// [file] A remote or local file.
  /// [interpreter] The script interpreter to use.
  /// [outputFilePath] Only recorded for enforce Exec.
  /// [script] An inline script.
  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforce({
    this.args,
    this.file,
    required this.interpreter,
    this.outputFilePath,
    this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'file': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'interpreter': interpreter,
      'outputFilePath': ?outputFilePath,
      'script': ?script,
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforce.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforce(
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      file: map['file'] == null ? null : (V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforceFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input(),
      interpreter: (map['interpreter'] as String).input(),
      outputFilePath: map['outputFilePath'] == null ? null : (map['outputFilePath']! as String).input(),
      script: map['script'] == null ? null : (map['script']! as String).input(),
    );
  }
}

