// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_route_extension_extension_chain_extension.dart';
import 'lb_route_extension_extension_chain_match_condition.dart';

class LbRouteExtensionExtensionChain {
  /// A set of extensions to execute for the matching request.
  /// At least one extension is required. Up to 3 extensions can be defined for each extension chain for
  /// LbTrafficExtension resource. LbRouteExtension chains are limited to 1 extension per extension chain.
  /// Further documentation can be found at https://cloud.google.com/service-extensions/docs/reference/rest/v1/ExtensionChain#Extension
  /// Structure is documented below.
  final List<LbRouteExtensionExtensionChainExtension> extensions;
  /// Conditions under which this chain is invoked for a request.
  /// Structure is documented below.
  final LbRouteExtensionExtensionChainMatchCondition matchCondition;
  /// The name for this extension chain. The name is logged as part of the HTTP request logs.
  /// The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens,
  /// and can have a maximum length of 63 characters. Additionally, the first character must be a letter
  /// and the last character must be a letter or a number.
  final String name;

  /// Creates a new [LbRouteExtensionExtensionChain].
  /// [extensions] A set of extensions to execute for the matching request.
  /// [matchCondition] Conditions under which this chain is invoked for a request.
  /// [name] The name for this extension chain. The name is logged as part of the HTTP request logs.
  LbRouteExtensionExtensionChain({
    required this.extensions,
    required this.matchCondition,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions': pulumi.Input.encodeList<LbRouteExtensionExtensionChainExtension, Map<String, dynamic>>(extensions, (value) => value.toMap()),
      'matchCondition': matchCondition.toMap(),
      'name': name,
    };
  }

  factory LbRouteExtensionExtensionChain.fromMap(Map<String, dynamic> map) {
    return LbRouteExtensionExtensionChain(
      extensions: pulumi.Input.decodeList<LbRouteExtensionExtensionChainExtension>(map['extensions'], (value) => LbRouteExtensionExtensionChainExtension.fromMap((value as Map).cast<String, dynamic>())),
      matchCondition: LbRouteExtensionExtensionChainMatchCondition.fromMap((map['matchCondition'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

