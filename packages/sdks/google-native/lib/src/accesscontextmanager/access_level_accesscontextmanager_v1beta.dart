import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_accesscontextmanager_v1beta_args.dart';
import 'basic_level_response_accesscontextmanager_v1beta.dart';
import 'custom_level_response_accesscontextmanager_v1beta.dart';

/// Create an Access Level. The longrunning operation from this RPC will have a successful status once the Access Level has propagated to long-lasting storage. Access Levels containing errors will result in an error response for the first error encountered.
class AccessLevelAccesscontextmanagerV1beta extends pulumi.CustomResource {
  late final pulumi.Output<String> accessPolicyId;
  /// A `BasicLevel` composed of `Conditions`.
  late final pulumi.Output<BasicLevelResponseAccesscontextmanagerV1beta> basic;
  /// A `CustomLevel` written in the Common Expression Language.
  late final pulumi.Output<CustomLevelResponseAccesscontextmanagerV1beta> custom;
  /// Description of the `AccessLevel` and its use. Does not affect behavior.
  late final pulumi.Output<String> description;
  /// Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  late final pulumi.Output<String> name;
  /// Human readable title. Must be unique within the Policy.
  late final pulumi.Output<String> title;

  /// Creates a new [AccessLevelAccesscontextmanagerV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessLevelAccesscontextmanagerV1beta]. {@macro pulumi_accesscontextmanager_v1beta_access_level_accesscontextmanager_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessLevelAccesscontextmanagerV1beta(
    String name, {
    AccessLevelAccesscontextmanagerV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:accesscontextmanager/v1beta:AccessLevel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    basic = registerOutput<BasicLevelResponseAccesscontextmanagerV1beta>('basic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BasicLevelResponseAccesscontextmanagerV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    custom = registerOutput<CustomLevelResponseAccesscontextmanagerV1beta>('custom', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomLevelResponseAccesscontextmanagerV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    title = registerOutput<String>('title');
  }
}
