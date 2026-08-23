// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_edge_extension_extension_chain_extension.dart';
import 'lb_edge_extension_extension_chain_match_condition.dart';

class LbEdgeExtensionExtensionChain {
  /// A set of extensions to execute for the matching request.
  /// At least one extension is required. Up to 3 extensions can be defined for each extension chain for
  /// LbTrafficExtension resource. LbRouteExtension chains are limited to 1 extension per extension chain.
  /// Structure is documented below.
  final pulumi.Input<List<LbEdgeExtensionExtensionChainExtension>> extensions;
  /// Conditions under which this chain is invoked for a request.
  /// Structure is documented below.
  final pulumi.Input<LbEdgeExtensionExtensionChainMatchCondition> matchCondition;
  /// The name for this extension chain. The name is logged as part of the HTTP request logs.
  /// The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens,
  /// and can have a maximum length of 63 characters. Additionally, the first character must be a letter
  /// and the last character must be a letter or a number.
  final pulumi.Input<String> name;

  /// Creates a new [LbEdgeExtensionExtensionChain].
  /// [extensions] A set of extensions to execute for the matching request.
  /// [matchCondition] Conditions under which this chain is invoked for a request.
  /// [name] The name for this extension chain. The name is logged as part of the HTTP request logs.
  const LbEdgeExtensionExtensionChain({
    required this.extensions,
    required this.matchCondition,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions': pulumi.Input.mapInputValue<List<LbEdgeExtensionExtensionChainExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<LbEdgeExtensionExtensionChainExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchCondition': pulumi.Input.mapInputValue<LbEdgeExtensionExtensionChainMatchCondition, Map<String, dynamic>>(matchCondition, (value) => value.toMap()),
      'name': name,
    };
  }

  factory LbEdgeExtensionExtensionChain.fromMap(Map<String, dynamic> map) {
    return LbEdgeExtensionExtensionChain(
      extensions: pulumi.Input.fromValue(pulumi.Input.decodeList<LbEdgeExtensionExtensionChainExtension>(map['extensions']!, (value) => LbEdgeExtensionExtensionChainExtension.fromMap((value as Map).cast<String, dynamic>()))),
      matchCondition: pulumi.Input.fromValue(LbEdgeExtensionExtensionChainMatchCondition.fromMap((map['matchCondition']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
