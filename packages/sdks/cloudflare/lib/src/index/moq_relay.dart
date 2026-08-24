import 'package:pulumi/pulumi.dart' as pulumi;
import 'moq_relay_args.dart';
import 'moq_relay_config.dart';
import 'moq_relay_state.dart';

/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/moqRelay:MoqRelay example '<account_id>/<relay_id>'
/// ```
class MoqRelay extends pulumi.CustomResource {
  /// Cloudflare account identifier.
  late final pulumi.Output<String> accountId;
  /// upstreams and lingeringSubscribe are mutually exclusive.
  late final pulumi.Output<MoqRelayConfig> config;
  late final pulumi.Output<String> created;
  late final pulumi.Output<String> modified;
  /// Human-readable name for the relay.
  late final pulumi.Output<String> name;
  /// "connected" when active, omitted otherwise.
  /// Available values: "connected".
  late final pulumi.Output<String> status;
  /// Full access token (publish + subscribe). Treat as sensitive.
  late final pulumi.Output<String> tokenPublishSubscribe;
  /// Subscribe-only token. Treat as sensitive.
  late final pulumi.Output<String> tokenSubscribe;
  /// Server-generated unique identifier (32 hex chars).
  late final pulumi.Output<String> uid;

  /// Creates a new [MoqRelay].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MoqRelay]. {@macro pulumi_index_moq_relay_moq_relay_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MoqRelay(
    String name, {
    MoqRelayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/moqRelay:MoqRelay',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
          additionalSecretOutputs: const ['tokenPublishSubscribe', 'tokenSubscribe'],
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<MoqRelayConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MoqRelayConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tokenPublishSubscribe = registerOutput<String>('tokenPublishSubscribe', isSecret: true);
    tokenSubscribe = registerOutput<String>('tokenSubscribe', isSecret: true);
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [MoqRelay] resource's state with the given [name] and [id].
  static MoqRelay get(
    String name,
    pulumi.Input<String> id, {
    MoqRelayState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MoqRelay._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MoqRelay._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/moqRelay:MoqRelay',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<MoqRelayConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MoqRelayConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tokenPublishSubscribe = registerOutput<String>('tokenPublishSubscribe', isSecret: true);
    tokenSubscribe = registerOutput<String>('tokenSubscribe', isSecret: true);
    uid = registerOutput<String>('uid');
  }

  /// Creates a typed reference to an existing [MoqRelay] resource.
  MoqRelay.reference(String urn)
    : super(
        'cloudflare:index/moqRelay:MoqRelay',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['tokenPublishSubscribe', 'tokenSubscribe'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<MoqRelayConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MoqRelayConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tokenPublishSubscribe = registerOutput<String>('tokenPublishSubscribe', isSecret: true);
    tokenSubscribe = registerOutput<String>('tokenSubscribe', isSecret: true);
    uid = registerOutput<String>('uid');
  }
}
