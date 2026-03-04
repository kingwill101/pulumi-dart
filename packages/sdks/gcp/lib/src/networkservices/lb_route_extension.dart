import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_route_extension_args.dart';
import 'lb_route_extension_state.dart';

/// LbRouteExtension is a resource that lets you control where traffic is routed to for a given request.
///
///
/// To get more information about LbRouteExtension, see:
///
/// * [API documentation](https://cloud.google.com/service-extensions/docs/reference/rest/v1/projects.locations.lbRouteExtensions)
/// * How-to Guides
/// * [Configure a route extension](https://cloud.google.com/service-extensions/docs/configure-callout#configure_a_route_extension)
///
/// ## Example Usage
///
/// ## Import
///
/// LbRouteExtension can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/lbRouteExtensions/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, LbRouteExtension can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbRouteExtension:LbRouteExtension default projects/{{project}}/locations/{{location}}/lbRouteExtensions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbRouteExtension:LbRouteExtension default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbRouteExtension:LbRouteExtension default {{location}}/{{name}}
/// ```
class LbRouteExtension extends pulumi.CustomResource {
  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// Match conditions for each extension chain are evaluated in sequence for a given request.
  /// The first extension chain that has a condition that matches the request is executed.
  /// Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// Further information can be found at https://cloud.google.com/service-extensions/docs/reference/rest/v1/ExtensionChain
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> extensionChains;

  /// A list of references to the forwarding rules to which this service extension is attached to.
  /// At least one forwarding rule is required. There can be only one LbRouteExtension resource per forwarding rule.
  late final pulumi.Output<List<String>> forwardingRules;

  /// Set of labels associated with the LbRouteExtension resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme.
  /// For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service) and
  /// [Supported application load balancers](https://cloud.google.com/service-extensions/docs/callouts-overview#supported-lbs).
  /// Possible values are: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  late final pulumi.Output<String> loadBalancingScheme;

  /// The location of the route extension
  late final pulumi.Output<String> location;

  /// Name of the LbRouteExtension resource in the following format: projects/{project}/locations/{location}/lbRouteExtensions/{lbRouteExtension}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Creates a new [LbRouteExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LbRouteExtension]. {@macro pulumi_networkservices_lb_route_extension_lb_route_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LbRouteExtension(
    String name, {
    LbRouteExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/lbRouteExtension:LbRouteExtension',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    extensionChains = registerOutput<List<Map<String, dynamic>>>(
      'extensionChains',
    );
    forwardingRules = registerOutput<List<String>>('forwardingRules');
    labels = registerOutput<Map<String, String>?>('labels');
    loadBalancingScheme = registerOutput<String>('loadBalancingScheme');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }

  /// Gets an existing [LbRouteExtension] resource's state with the given [name] and [id].
  static LbRouteExtension get(
    String name,
    pulumi.Input<String> id, {
    LbRouteExtensionState? state,
  }) {
    return LbRouteExtension._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LbRouteExtension._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/lbRouteExtension:LbRouteExtension',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    extensionChains = registerOutput<List<Map<String, dynamic>>>(
      'extensionChains',
    );
    forwardingRules = registerOutput<List<String>>('forwardingRules');
    labels = registerOutput<Map<String, String>?>('labels');
    loadBalancingScheme = registerOutput<String>('loadBalancingScheme');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
