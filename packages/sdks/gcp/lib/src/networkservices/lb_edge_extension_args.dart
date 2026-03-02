// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_edge_extension_extension_chain.dart';

/// {@template pulumi_networkservices_lb_edge_extension_lb_edge_extension_args_doc}
/// The set of arguments for LbEdgeExtension.
/// {@endtemplate}
/// {@macro pulumi_networkservices_lb_edge_extension_lb_edge_extension_args_doc}
class LbEdgeExtensionArgs {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// Match conditions for each extension chain are evaluated in sequence for a given request.
  /// The first extension chain that has a condition that matches the request is executed.
  /// Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// Structure is documented below.
  final pulumi.Input<List<LbEdgeExtensionExtensionChain>> extensionChains;
  /// A list of references to the forwarding rules to which this service extension is attached.
  /// At least one forwarding rule is required. Only one LbEdgeExtension resource can be associated with a forwarding rule.
  final pulumi.Input<List<String>> forwardingRules;
  /// Set of labels associated with the LbEdgeExtension resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// All forwarding rules referenced by this extension must share the same load balancing scheme.
  /// Possible values are: `EXTERNAL_MANAGED`.
  final pulumi.Input<String> loadBalancingScheme;
  /// The location of the edge extension
  final pulumi.Input<String> location;
  /// Name of the LbEdgeExtension resource in the following format: projects/{project}/locations/{location}/lbEdgeExtensions/{lbEdgeExtensions}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [LbEdgeExtensionArgs].
  /// [description] A human-readable description of the resource.
  /// [extensionChains] A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// [forwardingRules] A list of references to the forwarding rules to which this service extension is attached.
  /// [labels] Set of labels associated with the LbEdgeExtension resource.
  /// [loadBalancingScheme] All forwarding rules referenced by this extension must share the same load balancing scheme.
  /// [location] The location of the edge extension
  /// [name] Name of the LbEdgeExtension resource in the following format: projects/{project}/locations/{location}/lbEdgeExtensions/{lbEdgeExtensions}
  /// [project] The ID of the project in which the resource belongs.
  LbEdgeExtensionArgs({
    this.description,
    required this.extensionChains,
    required this.forwardingRules,
    this.labels,
    required this.loadBalancingScheme,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'extensionChains': pulumi.Input.mapInputValue<List<LbEdgeExtensionExtensionChain>, List<Map<String, dynamic>>>(extensionChains, (value) => pulumi.Input.encodeList<LbEdgeExtensionExtensionChain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forwardingRules': forwardingRules,
      'labels': ?labels,
      'loadBalancingScheme': loadBalancingScheme,
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory LbEdgeExtensionArgs.fromMap(Map<String, dynamic> map) {
    return LbEdgeExtensionArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      extensionChains: (pulumi.Input.decodeList<LbEdgeExtensionExtensionChain>(map['extensionChains'], (value) => LbEdgeExtensionExtensionChain.fromMap((value as Map).cast<String, dynamic>()))).input(),
      forwardingRules: ((map['forwardingRules'] as List).cast<String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      loadBalancingScheme: (map['loadBalancingScheme'] as String).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

