// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecSourceCodeSpecPythonSpec {
  /// Optional. The Python module to load as the entrypoint,
  /// specified as a fully qualified module name. For example:
  /// path.to.agent. If not specified, defaults to "agent".
  /// The project root will be added to Python sys.path, allowing
  /// imports to be specified relative to the root.
  final pulumi.Input<String?>? entrypointModule;
  /// Optional. The name of the callable object within the
  /// entrypointModule to use as the application If not specified,
  /// defaults to "rootAgent".
  final pulumi.Input<String?>? entrypointObject;
  /// Optional. The path to the requirements file, relative to the
  /// source root. If not specified, defaults to "requirements.txt".
  final pulumi.Input<String?>? requirementsFile;
  /// Optional. The version of Python to use. Support version
  /// includes 3.9, 3.10, 3.11, 3.12, 3.13. If not specified,
  /// default value is 3.10.
  final pulumi.Input<String?>? version;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpecPythonSpec].
  /// [entrypointModule] Optional. The Python module to load as the entrypoint,
  /// [entrypointObject] Optional. The name of the callable object within the
  /// [requirementsFile] Optional. The path to the requirements file, relative to the
  /// [version] Optional. The version of Python to use. Support version
  const AiReasoningEngineSpecSourceCodeSpecPythonSpec({
    this.entrypointModule,
    this.entrypointObject,
    this.requirementsFile,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entrypointModule': ?entrypointModule,
      'entrypointObject': ?entrypointObject,
      'requirementsFile': ?requirementsFile,
      'version': ?version,
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpecPythonSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpecPythonSpec(
      entrypointModule: (() { final guardedValue = map['entrypointModule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entrypointObject: (() { final guardedValue = map['entrypointObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requirementsFile: (() { final guardedValue = map['requirementsFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
