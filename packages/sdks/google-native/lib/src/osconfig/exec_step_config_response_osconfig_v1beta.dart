// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcs_object_response_osconfig_v1beta.dart';

/// Common configurations for an ExecStep.
class ExecStepConfigResponseOsconfigV1beta {
  /// Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  final pulumi.Input<List<int>> allowedSuccessCodes;
  /// A Google Cloud Storage object containing the executable.
  final pulumi.Input<GcsObjectResponseOsconfigV1beta> gcsObject;
  /// The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  final pulumi.Input<String> interpreter;
  /// An absolute path to the executable on the VM.
  final pulumi.Input<String> localPath;

  /// Creates a new [ExecStepConfigResponseOsconfigV1beta].
  /// [allowedSuccessCodes] Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  /// [gcsObject] A Google Cloud Storage object containing the executable.
  /// [interpreter] The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  /// [localPath] An absolute path to the executable on the VM.
  const ExecStepConfigResponseOsconfigV1beta({
    required this.allowedSuccessCodes,
    required this.gcsObject,
    required this.interpreter,
    required this.localPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSuccessCodes': allowedSuccessCodes,
      'gcsObject': pulumi.Input.mapInputValue<GcsObjectResponseOsconfigV1beta, Map<String, dynamic>>(gcsObject, (value) => value.toMap()),
      'interpreter': interpreter,
      'localPath': localPath,
    };
  }

  factory ExecStepConfigResponseOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return ExecStepConfigResponseOsconfigV1beta(
      allowedSuccessCodes: pulumi.Input.fromValue((map['allowedSuccessCodes'] as List).cast<int>()),
      gcsObject: pulumi.Input.fromValue(GcsObjectResponseOsconfigV1beta.fromMap((map['gcsObject']! as Map).cast<String, dynamic>())),
      interpreter: pulumi.Input.fromValue(map['interpreter'] as String),
      localPath: pulumi.Input.fromValue(map['localPath'] as String),
    );
  }
}

