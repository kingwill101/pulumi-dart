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
  late final pulumi.Output<List<dynamic>?> triggers;

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
          additionalSecretOutputs: const ['connection'],
        ) {
    connection = registerOutput<Connection>('connection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Connection.fromMap((guardedValue as Map).cast<String, dynamic>()); }, isSecret: true);
    localPath = registerOutput<String>('localPath');
    remotePath = registerOutput<String>('remotePath');
    triggers = registerOutput<List<dynamic>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
  }

  /// Creates a typed reference to an existing [CopyFile] resource.
  CopyFile.reference(String urn)
    : super(
        'command:remote:CopyFile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['connection'],
        isResourceReference: true,
      ) {
    connection = registerOutput<Connection>('connection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Connection.fromMap((guardedValue as Map).cast<String, dynamic>()); }, isSecret: true);
    localPath = registerOutput<String>('localPath');
    remotePath = registerOutput<String>('remotePath');
    triggers = registerOutput<List<dynamic>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
  }
}
