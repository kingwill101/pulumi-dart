import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_args.dart';
import 'basic_level_response.dart';
import 'custom_level_response.dart';

/// Creates an access level. The long-running operation from this RPC has a successful status after the access level propagates to long-lasting storage. If access levels contain errors, an error response is returned for the first error encountered.
class AccessLevel extends pulumi.CustomResource {
  late final pulumi.Output<String> accessPolicyId;

  /// A `BasicLevel` composed of `Conditions`.
  late final pulumi.Output<BasicLevelResponse> basic;

  /// A `CustomLevel` written in the Common Expression Language.
  late final pulumi.Output<CustomLevelResponse> custom;

  /// Description of the `AccessLevel` and its use. Does not affect behavior.
  late final pulumi.Output<String> description;

  /// Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  late final pulumi.Output<String> name;

  /// Human readable title. Must be unique within the Policy.
  late final pulumi.Output<String> title;

  /// Creates a new [AccessLevel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessLevel]. {@macro pulumi_accesscontextmanager_v1_access_level_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessLevel(
    String name, {
    AccessLevelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:accesscontextmanager/v1:AccessLevel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    basic = registerOutput<BasicLevelResponse>('basic');
    custom = registerOutput<CustomLevelResponse>('custom');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    title = registerOutput<String>('title');
  }
}
