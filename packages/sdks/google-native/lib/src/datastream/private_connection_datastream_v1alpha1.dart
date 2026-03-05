import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response_datastream_v1alpha1.dart';
import 'private_connection_datastream_v1alpha1_args.dart';
import 'vpc_peering_config_response_datastream_v1alpha1.dart';

/// Use this method to create a private connectivity configuration.
/// Auto-naming is currently not supported for this resource.
class PrivateConnectionDatastreamV1alpha1 extends pulumi.CustomResource {
  /// The create time of the resource.
  late final pulumi.Output<String> createTime;
  /// Display name.
  late final pulumi.Output<String> displayName;
  /// In case of error, the details of the error in a user-friendly format.
  late final pulumi.Output<ErrorResponseDatastreamV1alpha1> error;
  /// Labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The resource's name.
  late final pulumi.Output<String> name;
  /// Required. The private connectivity identifier.
  late final pulumi.Output<String> privateConnectionId;
  late final pulumi.Output<String> project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// The state of the Private Connection.
  late final pulumi.Output<String> state;
  /// The update time of the resource.
  late final pulumi.Output<String> updateTime;
  /// VPC Peering Config
  late final pulumi.Output<VpcPeeringConfigResponseDatastreamV1alpha1> vpcPeeringConfig;

  /// Creates a new [PrivateConnectionDatastreamV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateConnectionDatastreamV1alpha1]. {@macro pulumi_datastream_v1alpha1_private_connection_datastream_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateConnectionDatastreamV1alpha1(
    String name, {
    PrivateConnectionDatastreamV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datastream/v1alpha1:PrivateConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    error = registerOutput<ErrorResponseDatastreamV1alpha1>('error', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ErrorResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateConnectionId = registerOutput<String>('privateConnectionId');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    vpcPeeringConfig = registerOutput<VpcPeeringConfigResponseDatastreamV1alpha1>('vpcPeeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcPeeringConfigResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
