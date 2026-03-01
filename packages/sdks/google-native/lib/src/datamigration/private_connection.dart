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
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.error = registerOutput<StatusResponse>('error');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateConnectionId = registerOutput<String>('privateConnectionId');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.skipValidation = registerOutput<bool?>('skipValidation');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.vpcPeeringConfig = registerOutput<VpcPeeringConfigResponse>('vpcPeeringConfig');
  }
}
