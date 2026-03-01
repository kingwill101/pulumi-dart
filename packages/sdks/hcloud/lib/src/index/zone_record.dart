import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_record_args.dart';
import 'zone_record_state.dart';

/// Provides a Hetzner Cloud Zone Record resource.
///
/// This can be used to create, modify, and delete Zone Records.
///
/// Managing the TTL, labels and protection level for the Zone Record Set that the Record belongs to is not possible.
///
/// Importing this resource is only supported using an identity.
///
/// See the [Zone RRSets API documentation](https://docs.hetzner.cloud/reference/cloud#zone-rrsets) for more details.
///
/// !> This resource must only be used, when records cannot be managed with a `hcloud.ZoneRrset` resource.
class ZoneRecord extends pulumi.CustomResource {
  /// Comment of the Zone Record.
  late final pulumi.Output<String> comment;
  /// Name of the Zone Record.
  late final pulumi.Output<String> name;
  /// Type of the Zone Record.
  late final pulumi.Output<String> type;
  /// Value of the Zone Record.
  late final pulumi.Output<String> value;
  /// ID or Name of the parent Zone.
  late final pulumi.Output<String> zone;

  /// Creates a new [ZoneRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneRecord]. {@macro pulumi_index_zone_record_zone_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneRecord(
    String name, {
    ZoneRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/zoneRecord:ZoneRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comment = registerOutput<String>('comment');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String>('value');
    this.zone = registerOutput<String>('zone');
  }

  /// Gets an existing [ZoneRecord] resource's state with the given [name] and [id].
  static ZoneRecord get(
    String name,
    pulumi.Input<String> id, {
    ZoneRecordState? state,
  }) {
    return ZoneRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ZoneRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/zoneRecord:ZoneRecord',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comment = registerOutput<String>('comment');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String>('value');
    this.zone = registerOutput<String>('zone');
  }
}
