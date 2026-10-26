import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_cap_args.dart';

/// Creates or replaces the monthly Neo usage cap for an organization. The cap must be at least $10/month. To remove the cap, call DeleteNeoUsageCap.
class UsageCap extends pulumi.CustomResource {
  /// Monthly cap in US-dollar cents. Always strictly positive; "no cap" is the absence of a row (GetNeoUsageCap returns 204).
  late final pulumi.Output<int> capCents;
  /// Whether threshold-warning emails (50/80/95/100% of the cap) are sent to billing admins. True unless the admin has turned them off.
  late final pulumi.Output<bool> notificationsEnabled;
  /// Time when the cap was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [UsageCap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UsageCap]. {@macro pulumi_api_neo_usage_cap_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UsageCap(
    String name, {
    UsageCapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/neo:UsageCap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    capCents = registerOutput<int>('capCents');
    notificationsEnabled = registerOutput<bool>('notificationsEnabled');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [UsageCap] resource.
  UsageCap.reference(String urn)
    : super(
        'pulumiservice:api/neo:UsageCap',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    capCents = registerOutput<int>('capCents');
    notificationsEnabled = registerOutput<bool>('notificationsEnabled');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
