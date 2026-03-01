import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_args.dart';

/// Create a metadata partition.
/// Auto-naming is currently not supported for this resource.
class Partition extends pulumi.CustomResource {
  late final pulumi.Output<String> entityId;
  /// Optional. The etag for this partition.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> lakeId;
  late final pulumi.Output<String> location;
  /// Partition values used in the HTTP URL must be double encoded. For example, url_encode(url_encode(value)) can be used to encode "US:CA/CA#Sunnyvale so that the request URL ends with "/partitions/US%253ACA/CA%2523Sunnyvale". The name field in the response retains the encoded format.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Immutable. The set of values representing the partition, which correspond to the partition schema defined in the parent entity.
  late final pulumi.Output<List<String>> values;
  late final pulumi.Output<String> zone;

  /// Creates a new [Partition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Partition]. {@macro pulumi_dataplex_v1_partition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Partition(
    String name, {
    PartitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Partition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.entityId = registerOutput<String>('entityId');
    this.etag = registerOutput<String>('etag');
    this.lakeId = registerOutput<String>('lakeId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.values = registerOutput<List<String>>('values');
    this.zone = registerOutput<String>('zone');
  }
}
