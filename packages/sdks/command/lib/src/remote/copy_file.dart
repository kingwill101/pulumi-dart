import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection.dart';
import 'copy_file_args.dart';

/// Copy a local file to a remote host.
class CopyFile extends pulumi.CustomResource {
  /// The parameters with which to connect to the remote host.
  late final pulumi.Output<Connection> connection;

  /// The path of the file to be copied.
  late final pulumi.Output<String> localPath;

  /// The destination path in the remote host.
  late final pulumi.Output<String> remotePath;

  /// Trigger replacements on changes to this input.
  late final pulumi.Output<List<Map<String, dynamic>>?> triggers;

  /// Creates a new [CopyFile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CopyFile]. {@macro pulumi_remote_copy_file_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CopyFile(
    String name, {
    CopyFileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'command:remote:CopyFile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connection = registerOutput<Connection>('connection');
    localPath = registerOutput<String>('localPath');
    remotePath = registerOutput<String>('remotePath');
    triggers = registerOutput<List<Map<String, dynamic>>?>('triggers');
  }
}
