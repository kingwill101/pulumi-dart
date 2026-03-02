// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Docker execuctor specification.
class DockerExecutor {
  /// The command or newline delimited script to run. The command string will be executed within a bash shell. If the command exits with a non-zero exit code, output parameter de-localization will be skipped and the pipeline operation's `error` field will be populated. Maximum command string length is 16384.
  final pulumi.Input<String> cmd;
  /// Image name from either Docker Hub or Google Container Registry. Users that run pipelines must have READ access to the image.
  final pulumi.Input<String> imageName;

  /// Creates a new [DockerExecutor].
  /// [cmd] The command or newline delimited script to run. The command string will be executed within a bash shell. If the command exits with a non-zero exit code, output parameter de-localization will be skipped and the pipeline operation's `error` field will be populated. Maximum command string length is 16384.
  /// [imageName] Image name from either Docker Hub or Google Container Registry. Users that run pipelines must have READ access to the image.
  DockerExecutor({
    required this.cmd,
    required this.imageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmd': cmd,
      'imageName': imageName,
    };
  }

  factory DockerExecutor.fromMap(Map<String, dynamic> map) {
    return DockerExecutor(
      cmd: (map['cmd'] as String).input(),
      imageName: (map['imageName'] as String).input(),
    );
  }
}

