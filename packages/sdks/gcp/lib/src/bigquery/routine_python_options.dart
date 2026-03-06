// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutinePythonOptions {
  /// The name of the function defined in Python code as the entry point when the
  /// Python UDF is invoked.
  final pulumi.Input<String> entryPoint;
  /// A list of Python package names along with versions to be installed.
  /// Example: ["pandas&gt;=2.1", "google-cloud-translate==3.11"]. For more
  /// information, see [Use third-party
  /// packages](https://cloud.google.com/bigquery/docs/user-defined-functions-python#third-party-packages).
  final pulumi.Input<List<String>>? packages;

  /// Creates a new [RoutinePythonOptions].
  /// [entryPoint] The name of the function defined in Python code as the entry point when the
  /// [packages] A list of Python package names along with versions to be installed.
  const RoutinePythonOptions({
    required this.entryPoint,
    this.packages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryPoint': entryPoint,
      'packages': ?packages,
    };
  }

  factory RoutinePythonOptions.fromMap(Map<String, dynamic> map) {
    return RoutinePythonOptions(
      entryPoint: pulumi.Input.fromValue(map['entryPoint'] as String),
      packages: (() { final guardedValue = map['packages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

