import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_group_args.dart';

/// Creates a new address group in a given project and location.
class AddressGroup extends pulumi.CustomResource {
  /// Required. Short name of the AddressGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  late final pulumi.Output<String> addressGroupId;

  /// Capacity of the Address Group
  late final pulumi.Output<int> capacity;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Free-text description of the resource.
  late final pulumi.Output<String> description;

  /// Optional. List of items.
  late final pulumi.Output<List<String>> items;

  /// Optional. Set of label tags associated with the AddressGroup resource.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Server-defined fully-qualified URL for this resource.
  late final pulumi.Output<String> selfLink;

  /// The type of the Address Group. Possible values are "IPv4" or "IPV6".
  late final pulumi.Output<String> type;

  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AddressGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AddressGroup]. {@macro pulumi_networksecurity_v1_address_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AddressGroup(
    String name, {
    AddressGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networksecurity/v1:AddressGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressGroupId = registerOutput<String>('addressGroupId');
    capacity = registerOutput<int>('capacity');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    items = registerOutput<List<String>>('items');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
