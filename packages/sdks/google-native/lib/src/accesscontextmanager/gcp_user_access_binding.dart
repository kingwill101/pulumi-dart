import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_user_access_binding_args.dart';

/// Creates a GcpUserAccessBinding. If the client specifies a name, the server ignores it. Fails if a resource already exists with the same group_key. Completion of this long-running operation does not necessarily signify that the new binding is deployed onto all affected users, which may take more time.
class GcpUserAccessBinding extends pulumi.CustomResource {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  late final pulumi.Output<List<String>> accessLevels;

  /// Optional. Dry run access level that will be evaluated but will not be enforced. The access denial based on dry run policy will be logged. Only one access level is supported, not multiple. This list must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  late final pulumi.Output<List<String>> dryRunAccessLevels;

  /// Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the [G Suite Directory API's Groups resource] (https://developers.google.com/admin-sdk/directory/v1/reference/groups#resource). If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  late final pulumi.Output<String> groupKey;

  /// Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should not be specified by the client during creation. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Creates a new [GcpUserAccessBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GcpUserAccessBinding]. {@macro pulumi_accesscontextmanager_v1_gcp_user_access_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GcpUserAccessBinding(
    String name, {
    GcpUserAccessBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:accesscontextmanager/v1:GcpUserAccessBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessLevels = registerOutput<List<String>>('accessLevels');
    dryRunAccessLevels = registerOutput<List<String>>('dryRunAccessLevels');
    groupKey = registerOutput<String>('groupKey');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
  }
}
