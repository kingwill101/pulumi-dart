// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_traffic_extension_extension_chain.dart';

/// {@template pulumi_networkservices_lb_traffic_extension_lb_traffic_extension_args_doc}
/// The set of arguments for LbTrafficExtension.
/// {@endtemplate}
/// {@macro pulumi_networkservices_lb_traffic_extension_lb_traffic_extension_args_doc}
class LbTrafficExtensionArgs {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// Match conditions for each extension chain are evaluated in sequence for a given request.
  /// The first extension chain that has a condition that matches the request is executed.
  /// Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// Further information can be found at https://cloud.google.com/service-extensions/docs/reference/rest/v1/ExtensionChain
  /// Structure is documented below.
  final pulumi.Input<List<LbTrafficExtensionExtensionChain>> extensionChains;
  /// A list of references to the forwarding rules to which this service extension is attached to.
  /// At least one forwarding rule is required. There can be only one LBTrafficExtension resource per forwarding rule.
  final pulumi.Input<List<String>> forwardingRules;
  /// Set of labels associated with the LbTrafficExtension resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme.
  /// For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service) and
  /// [Supported application load balancers](https://cloud.google.com/service-extensions/docs/callouts-overview#supported-lbs).
  /// Possible values are: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  final pulumi.Input<String> loadBalancingScheme;
  /// The location of the traffic extension
  final pulumi.Input<String> location;
  /// Name of the LbTrafficExtension resource in the following format: projects/{project}/locations/{location}/lbTrafficExtensions/{lbTrafficExtension}.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [LbTrafficExtensionArgs].
  /// [description] A human-readable description of the resource.
  /// [extensionChains] A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// [forwardingRules] A list of references to the forwarding rules to which this service extension is attached to.
  /// [labels] Set of labels associated with the LbTrafficExtension resource.
  /// [loadBalancingScheme] All backend services and forwarding rules referenced by this extension must share the same load balancing scheme.
  /// [location] The location of the traffic extension
  /// [name] Name of the LbTrafficExtension resource in the following format: projects/{project}/locations/{location}/lbTrafficExtensions/{lbTrafficExtension}.
  /// [project] The ID of the project in which the resource belongs.
  LbTrafficExtensionArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<List<LbTrafficExtensionExtensionChain>> extensionChains,
    required pulumi.Output<List<String>> forwardingRules,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> loadBalancingScheme,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      extensionChains = pulumi.Input.asInput<List<LbTrafficExtensionExtensionChain>>(extensionChains),
      forwardingRules = pulumi.Input.asInput<List<String>>(forwardingRules),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      loadBalancingScheme = pulumi.Input.asInput<String>(loadBalancingScheme),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'extensionChains': pulumi.Input.mapInputValue<List<LbTrafficExtensionExtensionChain>, List<Map<String, dynamic>>>(extensionChains, (value) => pulumi.Input.encodeList<LbTrafficExtensionExtensionChain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forwardingRules': forwardingRules,
      'labels': ?labels,
      'loadBalancingScheme': loadBalancingScheme,
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory LbTrafficExtensionArgs.fromMap(Map<String, dynamic> map) {
    return LbTrafficExtensionArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      extensionChains: pulumi.Output.create<List<LbTrafficExtensionExtensionChain>>(pulumi.Input.decodeList<LbTrafficExtensionExtensionChain>(map['extensionChains'], (value) => LbTrafficExtensionExtensionChain.fromMap((value as Map).cast<String, dynamic>()))),
      forwardingRules: pulumi.Output.create<List<String>>((map['forwardingRules'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      loadBalancingScheme: pulumi.Output.create<String>(map['loadBalancingScheme'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

