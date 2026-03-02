// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExtensionsInstanceRuntimeDataFatalError {
  /// The error message. This is set by the extension developer to give
  /// more detail on why the extension is unusable and must be re-installed
  /// or reconfigured.
  final pulumi.Input<String>? errorMessage;

  /// Creates a new [ExtensionsInstanceRuntimeDataFatalError].
  /// [errorMessage] The error message. This is set by the extension developer to give
  ExtensionsInstanceRuntimeDataFatalError({
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
    };
  }

  factory ExtensionsInstanceRuntimeDataFatalError.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceRuntimeDataFatalError(
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage']! as String).input(),
    );
  }
}

