// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection.dart';

/// {@template pulumi_remote_copy_file_args_doc}
/// The set of arguments for CopyFile.
/// {@endtemplate}
/// {@macro pulumi_remote_copy_file_args_doc}
class CopyFileArgs {
  /// The parameters with which to connect to the remote host.
  final pulumi.Input<Connection> connection;
  /// The path of the file to be copied.
  final pulumi.Input<String> localPath;
  /// The destination path in the remote host.
  final pulumi.Input<String> remotePath;
  /// Trigger replacements on changes to this input.
  final pulumi.Input<List<dynamic>>? triggers;

  /// Creates a new [CopyFileArgs].
  /// [connection] The parameters with which to connect to the remote host.
  /// [localPath] The path of the file to be copied.
  /// [remotePath] The destination path in the remote host.
  /// [triggers] Trigger replacements on changes to this input.
  CopyFileArgs({
    required this.connection,
    required this.localPath,
    required this.remotePath,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': pulumi.Input.mapInputValue<Connection, Map<String, dynamic>>(connection, (value) => value.toMap()),
      'localPath': localPath,
      'remotePath': remotePath,
      'triggers': ?triggers,
    };
  }

  factory CopyFileArgs.fromMap(Map<String, dynamic> map) {
    return CopyFileArgs(
      connection: pulumi.Input.fromValue(Connection.fromMap((map['connection']! as Map).cast<String, dynamic>())),
      localPath: pulumi.Input.fromValue(map['localPath'] as String),
      remotePath: pulumi.Input.fromValue(map['remotePath'] as String),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}

