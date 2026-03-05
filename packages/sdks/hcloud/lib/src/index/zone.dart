import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_args.dart';
import 'zone_authoritative_nameservers.dart';
import 'zone_state.dart';

/// Provides a Hetzner Cloud Zone resource.
///
/// This can be used to create, modify, and delete Zones.
///
/// For Internationalized domain names (IDN), see the `provider::hcloud::idna` function.
///
/// See the [Zones API documentation](https://docs.hetzner.cloud/reference/cloud#zones) for more details.
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// ```sh
/// $ pulumi import hcloud:index/zone:Zone example "$ZONE_ID_OR_NAME"
/// ```
class Zone extends pulumi.CustomResource {
  /// Authoritative nameservers of the Zone.
  late final pulumi.Output<ZoneAuthoritativeNameservers>
  authoritativeNameservers;

  /// Whether delete protection is enabled.
  late final pulumi.Output<bool> deleteProtection;

  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  late final pulumi.Output<Map<String, String>> labels;

  /// Mode of the Zone.
  late final pulumi.Output<String> mode;

  /// Name of the Zone.
  late final pulumi.Output<String> name;

  /// Primary nameservers of the Zone. Forbidden when mode is primary and required when mode is secondary.
  late final pulumi.Output<List<Map<String, dynamic>>> primaryNameservers;

  /// Registrar of the Zone.
  late final pulumi.Output<String> registrar;

  /// Default Time To Live (TTL) of the Zone.
  late final pulumi.Output<int> ttl;

  /// Creates a new [Zone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Zone]. {@macro pulumi_index_zone_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Zone(String name, {ZoneArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'hcloud:index/zone:Zone',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    authoritativeNameservers = registerOutput<ZoneAuthoritativeNameservers>(
      'authoritativeNameservers',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ZoneAuthoritativeNameservers.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    deleteProtection = registerOutput<bool>('deleteProtection');
    labels = registerOutput<Map<String, String>>('labels');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    primaryNameservers = registerOutput<List<Map<String, dynamic>>>(
      'primaryNameservers',
    );
    registrar = registerOutput<String>('registrar');
    ttl = registerOutput<int>('ttl');
  }

  /// Gets an existing [Zone] resource's state with the given [name] and [id].
  static Zone get(String name, pulumi.Input<String> id, {ZoneState? state}) {
    return Zone._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Zone._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/zone:Zone',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authoritativeNameservers = registerOutput<ZoneAuthoritativeNameservers>(
      'authoritativeNameservers',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ZoneAuthoritativeNameservers.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    deleteProtection = registerOutput<bool>('deleteProtection');
    labels = registerOutput<Map<String, String>>('labels');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    primaryNameservers = registerOutput<List<Map<String, dynamic>>>(
      'primaryNameservers',
    );
    registrar = registerOutput<String>('registrar');
    ttl = registerOutput<int>('ttl');
  }
}
