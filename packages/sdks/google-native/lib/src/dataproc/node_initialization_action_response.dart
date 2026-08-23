// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies an executable to run on a fully configured node and a timeout period for executable completion.
class NodeInitializationActionResponse {
  /// Cloud Storage URI of executable file.
  final pulumi.Input<String> executableFile;
  /// Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period.
  final pulumi.Input<String> executionTimeout;

  /// Creates a new [NodeInitializationActionResponse].
  /// [executableFile] Cloud Storage URI of executable file.
  /// [executionTimeout] Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period.
  const NodeInitializationActionResponse({
    required this.executableFile,
    required this.executionTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executableFile': executableFile,
      'executionTimeout': executionTimeout,
    };
  }

  factory NodeInitializationActionResponse.fromMap(Map<String, dynamic> map) {
    return NodeInitializationActionResponse(
      executableFile: pulumi.Input.fromValue(map['executableFile'] as String),
      executionTimeout: pulumi.Input.fromValue(map['executionTimeout'] as String),
    );
  }
}
