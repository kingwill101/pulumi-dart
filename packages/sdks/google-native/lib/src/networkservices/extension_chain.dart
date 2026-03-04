// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_chain_extension.dart';
import 'extension_chain_match_condition.dart';

/// A single extension chain wrapper that contains the match conditions and extensions to execute.
class ExtensionChain {
  /// A set of extensions to execute for the matching request. At least one extension is required. Up to 3 extensions can be defined for each extension chain for `LbTrafficExtension` resource. `LbRouteExtension` chains are limited to 1 extension per extension chain.
  final pulumi.Input<List<ExtensionChainExtension>> extensions;

  /// Conditions under which this chain is invoked for a request.
  final pulumi.Input<ExtensionChainMatchCondition> matchCondition;

  /// The name for this extension chain. The name is logged as part of the HTTP request logs. The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens, and can have a maximum length of 63 characters. Additionally, the first character must be a letter and the last a letter or a number.
  final pulumi.Input<String> name;

  /// Creates a new [ExtensionChain].
  /// [extensions] A set of extensions to execute for the matching request. At least one extension is required. Up to 3 extensions can be defined for each extension chain for `LbTrafficExtension` resource. `LbRouteExtension` chains are limited to 1 extension per extension chain.
  /// [matchCondition] Conditions under which this chain is invoked for a request.
  /// [name] The name for this extension chain. The name is logged as part of the HTTP request logs. The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens, and can have a maximum length of 63 characters. Additionally, the first character must be a letter and the last a letter or a number.
  ExtensionChain({
    required this.extensions,
    required this.matchCondition,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions':
          pulumi.Input.mapInputValue<
            List<ExtensionChainExtension>,
            List<Map<String, dynamic>>
          >(
            extensions,
            (value) =>
                pulumi.Input.encodeList<
                  ExtensionChainExtension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'matchCondition':
          pulumi.Input.mapInputValue<
            ExtensionChainMatchCondition,
            Map<String, dynamic>
          >(matchCondition, (value) => value.toMap()),
      'name': name,
    };
  }

  factory ExtensionChain.fromMap(Map<String, dynamic> map) {
    return ExtensionChain(
      extensions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ExtensionChainExtension>(
          map['extensions']!,
          (value) => ExtensionChainExtension.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      matchCondition: pulumi.Input.fromValue(
        ExtensionChainMatchCondition.fromMap(
          (map['matchCondition']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
