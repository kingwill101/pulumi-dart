import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_tls_info_response.dart';
import 'target_server_args.dart';

/// Creates a TargetServer in the specified environment.
class TargetServer extends pulumi.CustomResource {
  /// Optional. A human-readable description of this TargetServer.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> environmentId;

  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  late final pulumi.Output<String> host;

  /// Optional. Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  late final pulumi.Output<bool> isEnabled;

  /// Optional. The ID to give the TargetServer. This will overwrite the value in TargetServer.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  late final pulumi.Output<int> port;

  /// Immutable. The protocol used by this TargetServer.
  late final pulumi.Output<String> protocol;

  /// Optional. Specifies TLS configuration info for this TargetServer. The JSON name is `sSLInfo` for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  late final pulumi.Output<GoogleCloudApigeeV1TlsInfoResponse> sSLInfo;

  /// Creates a new [TargetServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetServer]. {@macro pulumi_apigee_v1_target_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetServer(
    String name, {
    TargetServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:TargetServer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String>('description');
    environmentId = registerOutput<String>('environmentId');
    host = registerOutput<String>('host');
    isEnabled = registerOutput<bool>('isEnabled');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    port = registerOutput<int>('port');
    protocol = registerOutput<String>('protocol');
    sSLInfo = registerOutput<GoogleCloudApigeeV1TlsInfoResponse>('sSLInfo');
  }
}
