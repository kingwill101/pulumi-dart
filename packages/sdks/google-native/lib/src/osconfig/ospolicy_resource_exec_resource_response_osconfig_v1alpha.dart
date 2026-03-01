// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_exec_resource_exec_response_osconfig_v1alpha.dart';

/// A resource that allows executing scripts on the VM. The `ExecResource` has 2 stages: `validate` and `enforce` and both stages accept a script as an argument to execute. When the `ExecResource` is applied by the agent, it first executes the script in the `validate` stage. The `validate` stage can signal that the `ExecResource` is already in the desired state by returning an exit code of `100`. If the `ExecResource` is not in the desired state, it should return an exit code of `101`. Any other exit code returned by this stage is considered an error. If the `ExecResource` is not in the desired state based on the exit code from the `validate` stage, the agent proceeds to execute the script from the `enforce` stage. If the `ExecResource` is already in the desired state, the `enforce` stage will not be run. Similar to `validate` stage, the `enforce` stage should return an exit code of `100` to indicate that the resource in now in its desired state. Any other exit code is considered an error. NOTE: An exit code of `100` was chosen over `0` (and `101` vs `1`) to have an explicit indicator of `in desired state`, `not in desired state` and errors. Because, for example, Powershell will always return an exit code of `0` unless an `exit` statement is provided in the script. So, for reasons of consistency and being explicit, exit codes `100` and `101` were chosen.
class OSPolicyResourceExecResourceResponseOsconfigV1alpha {
  /// What to run to bring this resource into the desired state. An exit code of 100 indicates "success", any other exit code indicates a failure running enforce.
  final OSPolicyResourceExecResourceExecResponseOsconfigV1alpha enforce;
  /// What to run to validate this resource is in the desired state. An exit code of 100 indicates "in desired state", and exit code of 101 indicates "not in desired state". Any other exit code indicates a failure running validate.
  final OSPolicyResourceExecResourceExecResponseOsconfigV1alpha validate;

  /// Creates a new [OSPolicyResourceExecResourceResponseOsconfigV1alpha].
  /// [enforce] What to run to bring this resource into the desired state. An exit code of 100 indicates "success", any other exit code indicates a failure running enforce.
  /// [validate] What to run to validate this resource is in the desired state. An exit code of 100 indicates "in desired state", and exit code of 101 indicates "not in desired state". Any other exit code indicates a failure running validate.
  OSPolicyResourceExecResourceResponseOsconfigV1alpha({
    required this.enforce,
    required this.validate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforce': enforce.toMap(),
      'validate': validate.toMap(),
    };
  }

  factory OSPolicyResourceExecResourceResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceExecResourceResponseOsconfigV1alpha(
      enforce: OSPolicyResourceExecResourceExecResponseOsconfigV1alpha.fromMap((map['enforce'] as Map).cast<String, dynamic>()),
      validate: OSPolicyResourceExecResourceExecResponseOsconfigV1alpha.fromMap((map['validate'] as Map).cast<String, dynamic>()),
    );
  }
}

