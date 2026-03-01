import 'package:pulumi/pulumi.dart' as pulumi;
import 'mesh_args.dart';

/// Creates a new Mesh in a given project and location.
class Mesh extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String> description;
  /// Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to be redirected to this port regardless of its actual ip:port destination. If unset, a port '15001' is used as the interception port. This is applicable only for sidecar proxy deployments.
  late final pulumi.Output<int> interceptionPort;
  /// Optional. Set of label tags associated with the Mesh resource.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Required. Short name of the Mesh resource to be created.
  late final pulumi.Output<String> meshId;
  /// Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Server-defined URL of this resource
  late final pulumi.Output<String> selfLink;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Mesh].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Mesh]. {@macro pulumi_networkservices_v1_mesh_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Mesh(
    String name, {
    MeshArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networkservices/v1:Mesh',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.interceptionPort = registerOutput<int>('interceptionPort');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.meshId = registerOutput<String>('meshId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
