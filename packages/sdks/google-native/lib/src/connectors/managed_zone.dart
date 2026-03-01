import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_args.dart';

/// Creates a new ManagedZone in a given project and location.
/// Auto-naming is currently not supported for this resource.
class ManagedZone extends pulumi.CustomResource {
  /// Created time.
  late final pulumi.Output<String> createTime;
  /// Optional. Description of the resource.
  late final pulumi.Output<String> description;
  /// DNS Name of the resource
  late final pulumi.Output<String> dns;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final pulumi.Output<Map<String, String>> labels;
  /// Required. Identifier to assign to the ManagedZone. Must be unique within scope of the parent resource.
  late final pulumi.Output<String> managedZoneId;
  /// Resource name of the Managed Zone. Format: projects/{project}/locations/global/managedZones/{managed_zone}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The name of the Target Project
  late final pulumi.Output<String> targetProject;
  /// The name of the Target Project VPC Network
  late final pulumi.Output<String> targetVpc;
  /// Updated time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ManagedZone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedZone]. {@macro pulumi_connectors_v1_managed_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedZone(
    String name, {
    ManagedZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:connectors/v1:ManagedZone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.dns = registerOutput<String>('dns');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.managedZoneId = registerOutput<String>('managedZoneId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.targetProject = registerOutput<String>('targetProject');
    this.targetVpc = registerOutput<String>('targetVpc');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
