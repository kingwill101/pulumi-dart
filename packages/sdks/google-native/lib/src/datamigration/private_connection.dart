import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_connection_args.dart';
import 'status_response.dart';
import 'vpc_peering_config_response.dart';

/// Creates a new private connection in a given project and location.
class PrivateConnection extends pulumi.CustomResource {
  /// The create time of the resource.
  late final pulumi.Output<String> createTime;
  /// The private connection display name.
  late final pulumi.Output<String> displayName;
  /// The error details in case of state FAILED.
  late final pulumi.Output<StatusResponse> error;
  /// The resource labels for private connections to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Required. The private connection identifier.
  late final pulumi.Output<String> privateConnectionId;
  late final pulumi.Output<String> project;
  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final pulumi.Output<String?> requestId;
  /// Optional. If set to true, will skip validations.
  late final pulumi.Output<bool?> skipValidation;
  /// The state of the private connection.
  late final pulumi.Output<String> state;
  /// The last update time of the resource.
  late final pulumi.Output<String> updateTime;
  /// VPC peering configuration.
  late final pulumi.Output<VpcPeeringConfigResponse> vpcPeeringConfig;

  /// Creates a new [PrivateConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateConnection]. {@macro pulumi_datamigration_v1_private_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateConnection(
    String name, {
    PrivateConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datamigration/v1:PrivateConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    error = registerOutput<StatusResponse>('error', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateConnectionId = registerOutput<String>('privateConnectionId');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    skipValidation = registerOutput<bool?>('skipValidation');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    vpcPeeringConfig = registerOutput<VpcPeeringConfigResponse>('vpcPeeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcPeeringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
