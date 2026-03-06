// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_chain_extension_response.dart';
import 'extension_chain_match_condition_response.dart';

/// A single extension chain wrapper that contains the match conditions and extensions to execute.
class ExtensionChainResponse {
  /// A set of extensions to execute for the matching request. At least one extension is required. Up to 3 extensions can be defined for each extension chain for `LbTrafficExtension` resource. `LbRouteExtension` chains are limited to 1 extension per extension chain.
  final pulumi.Input<List<ExtensionChainExtensionResponse>> extensions;
  /// Conditions under which this chain is invoked for a request.
  final pulumi.Input<ExtensionChainMatchConditionResponse> matchCondition;
  /// The name for this extension chain. The name is logged as part of the HTTP request logs. The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens, and can have a maximum length of 63 characters. Additionally, the first character must be a letter and the last a letter or a number.
  final pulumi.Input<String> name;

  /// Creates a new [ExtensionChainResponse].
  /// [extensions] A set of extensions to execute for the matching request. At least one extension is required. Up to 3 extensions can be defined for each extension chain for `LbTrafficExtension` resource. `LbRouteExtension` chains are limited to 1 extension per extension chain.
  /// [matchCondition] Conditions under which this chain is invoked for a request.
  /// [name] The name for this extension chain. The name is logged as part of the HTTP request logs. The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens, and can have a maximum length of 63 characters. Additionally, the first character must be a letter and the last a letter or a number.
  const ExtensionChainResponse({
    required this.extensions,
    required this.matchCondition,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions': pulumi.Input.mapInputValue<List<ExtensionChainExtensionResponse>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<ExtensionChainExtensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchCondition': pulumi.Input.mapInputValue<ExtensionChainMatchConditionResponse, Map<String, dynamic>>(matchCondition, (value) => value.toMap()),
      'name': name,
    };
  }

  factory ExtensionChainResponse.fromMap(Map<String, dynamic> map) {
    return ExtensionChainResponse(
      extensions: pulumi.Input.fromValue(pulumi.Input.decodeList<ExtensionChainExtensionResponse>(map['extensions']!, (value) => ExtensionChainExtensionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      matchCondition: pulumi.Input.fromValue(ExtensionChainMatchConditionResponse.fromMap((map['matchCondition']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

