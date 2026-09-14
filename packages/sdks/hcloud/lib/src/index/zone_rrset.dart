import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_rrset_args.dart';
import 'zone_rrset_record.dart';
import 'zone_rrset_state.dart';

/// Provides a Hetzner Cloud Zone Resource Record Set (RRSet) resource.
///
/// This can be used to create, modify, and delete Zone RRSets.
///
/// See the [Zone RRSets API documentation](https://docs.hetzner.cloud/reference/cloud#zone-rrsets) for more details.
///
/// **RRSets of type TXT:**
///
/// The format of TXT records must consist of one or many quoted strings of 255 characters.
///
/// A helper function to format TXT record is available at `provider::hcloud::txt_record`.
/// See the examples for more details.
///
/// **RRSets of type SOA:**
///
/// SOA records are created or deleted by the Hetzner Cloud API when creating or deleting
/// the parent Zone, therefor this Terraform resource will:
///
/// - import the RRSet in the state, instead of creating it.
/// - remove the RRSet from the state, instead of deleting it.
/// - set the SOA record SERIAL value to 0 before saving it to the state, as this value is automatically
/// incremented by the API and would cause issues otherwise.
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// ```sh
/// $ pulumi import hcloud:index/zoneRrset:ZoneRrset example "$ZONE_ID_OR_NAME/$RRSET_NAME/$RRSET_TYPE"
/// $ pulumi import hcloud:index/zoneRrset:ZoneRrset example "$ZONE_ID_OR_NAME/$RRSET_ID"
/// ```
class ZoneRrset extends pulumi.CustomResource {
  /// Whether change protection is enabled.
  late final pulumi.Output<bool> changeProtection;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  late final pulumi.Output<Map<String, String>> labels;
  /// Name of the Zone RRSet.
  late final pulumi.Output<String> name;
  /// Records of the Zone RRSet.
  late final pulumi.Output<List<ZoneRrsetRecord>> records;
  /// Time To Live (TTL) of the Zone RRSet.
  late final pulumi.Output<int?> ttl;
  /// Type of the Zone RRSet.
  late final pulumi.Output<String> type;
  /// ID or Name of the parent Zone.
  late final pulumi.Output<String> zone;

  /// Creates a new [ZoneRrset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneRrset]. {@macro pulumi_index_zone_rrset_zone_rrset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneRrset(
    String name, {
    ZoneRrsetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/zoneRrset:ZoneRrset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '1.42.0').merge(options),
        ) {
    changeProtection = registerOutput<bool>('changeProtection');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    records = registerOutput<List<ZoneRrsetRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneRrsetRecord>(guardedValue, (value) => ZoneRrsetRecord.fromMap((value as Map).cast<String, dynamic>())); });
    ttl = registerOutput<int?>('ttl');
    type = registerOutput<String>('type');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [ZoneRrset] resource's state with the given [name] and [id].
  static ZoneRrset get(
    String name,
    pulumi.Input<String> id, {
    ZoneRrsetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneRrset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneRrset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/zoneRrset:ZoneRrset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    changeProtection = registerOutput<bool>('changeProtection');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    records = registerOutput<List<ZoneRrsetRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneRrsetRecord>(guardedValue, (value) => ZoneRrsetRecord.fromMap((value as Map).cast<String, dynamic>())); });
    ttl = registerOutput<int?>('ttl');
    type = registerOutput<String>('type');
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [ZoneRrset] resource.
  ZoneRrset.reference(String urn)
    : super(
        'hcloud:index/zoneRrset:ZoneRrset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    changeProtection = registerOutput<bool>('changeProtection');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    records = registerOutput<List<ZoneRrsetRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneRrsetRecord>(guardedValue, (value) => ZoneRrsetRecord.fromMap((value as Map).cast<String, dynamic>())); });
    ttl = registerOutput<int?>('ttl');
    type = registerOutput<String>('type');
    zone = registerOutput<String>('zone');
  }
}
