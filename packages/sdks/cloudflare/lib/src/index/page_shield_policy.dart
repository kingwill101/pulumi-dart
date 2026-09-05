import 'package:pulumi/pulumi.dart' as pulumi;
import 'page_shield_policy_args.dart';
import 'page_shield_policy_state.dart';

/// Accepted Permissions
///
/// - `Domain Page Shield`
/// - `Domain Page Shield Read`
/// - `Page Shield`
/// - `Page Shield Read`
/// - `Zone Settings Read`
/// - `Zone Settings Write`
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/pageShieldPolicy:PageShieldPolicy example '<zone_id>/<policy_id>'
/// ```
class PageShieldPolicy extends pulumi.CustomResource {
  /// The action to take if the expression matches
  /// Available values: "allow", "log", "add*reporting*directives".
  late final pulumi.Output<String> action;
  /// A description for the policy
  late final pulumi.Output<String> description;
  /// Whether the policy is enabled
  late final pulumi.Output<bool> enabled;
  /// The expression which must match for the policy to be applied, using the Cloudflare Firewall rule expression syntax
  late final pulumi.Output<String> expression;
  /// The policy which will be applied
  late final pulumi.Output<String> value;
  /// Identifier
  late final pulumi.Output<String> zoneId;

  /// Creates a new [PageShieldPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PageShieldPolicy]. {@macro pulumi_index_page_shield_policy_page_shield_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PageShieldPolicy(
    String name, {
    PageShieldPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pageShieldPolicy:PageShieldPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    action = registerOutput<String>('action');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    expression = registerOutput<String>('expression');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [PageShieldPolicy] resource's state with the given [name] and [id].
  static PageShieldPolicy get(
    String name,
    pulumi.Input<String> id, {
    PageShieldPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PageShieldPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PageShieldPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pageShieldPolicy:PageShieldPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    expression = registerOutput<String>('expression');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [PageShieldPolicy] resource.
  PageShieldPolicy.reference(String urn)
    : super(
        'cloudflare:index/pageShieldPolicy:PageShieldPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<String>('action');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    expression = registerOutput<String>('expression');
    value = registerOutput<String>('value');
    zoneId = registerOutput<String>('zoneId');
  }
}
