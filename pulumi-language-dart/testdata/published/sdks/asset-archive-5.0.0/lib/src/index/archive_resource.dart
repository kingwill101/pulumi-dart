import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_resource_args.dart';

class ArchiveResource extends pulumi.CustomResource {
  late final pulumi.Output<dynamic> value;

  /// Creates a new [ArchiveResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ArchiveResource]. {@macro pulumi_index_archive_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ArchiveResource(
    String name, {
    ArchiveResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'asset-archive:index:ArchiveResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '5.0.0').merge(options),
        ) {
    value = registerOutput<dynamic>('value');
  }
}
