// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_extensions_allow_list.dart';
import 'get_agent_extensions_block_list.dart';

class GetAgent {
  /// A `extensions_allow_list` block as defined below.
  final pulumi.Input<List<GetAgentExtensionsAllowList>> extensionsAllowLists;
  /// A `extensions_block_list` block as defined below.
  final pulumi.Input<List<GetAgentExtensionsBlockList>> extensionsBlockLists;
  /// Specifies whether the extension service is enabled or disabled.
  final pulumi.Input<bool> extensionsEnabled;
  /// Specified whether the guest configuration service is enabled or disabled.
  final pulumi.Input<bool> guestConfigurationEnabled;
  /// Specifies the list of ports that the agent will be able to listen on.
  final pulumi.Input<List<String>> incomingConnectionsPorts;
  /// List of service names which should not use the specified proxy server.
  final pulumi.Input<List<String>> proxyBypasses;
  /// Specifies the URL of the proxy to be used.
  final pulumi.Input<String> proxyUrl;

  /// Creates a new [GetAgent].
  /// [extensionsAllowLists] A `extensions_allow_list` block as defined below.
  /// [extensionsBlockLists] A `extensions_block_list` block as defined below.
  /// [extensionsEnabled] Specifies whether the extension service is enabled or disabled.
  /// [guestConfigurationEnabled] Specified whether the guest configuration service is enabled or disabled.
  /// [incomingConnectionsPorts] Specifies the list of ports that the agent will be able to listen on.
  /// [proxyBypasses] List of service names which should not use the specified proxy server.
  /// [proxyUrl] Specifies the URL of the proxy to be used.
  GetAgent({
    required this.extensionsAllowLists,
    required this.extensionsBlockLists,
    required this.extensionsEnabled,
    required this.guestConfigurationEnabled,
    required this.incomingConnectionsPorts,
    required this.proxyBypasses,
    required this.proxyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionsAllowLists': pulumi.Input.mapInputValue<List<GetAgentExtensionsAllowList>, List<Map<String, dynamic>>>(extensionsAllowLists, (value) => pulumi.Input.encodeList<GetAgentExtensionsAllowList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensionsBlockLists': pulumi.Input.mapInputValue<List<GetAgentExtensionsBlockList>, List<Map<String, dynamic>>>(extensionsBlockLists, (value) => pulumi.Input.encodeList<GetAgentExtensionsBlockList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensionsEnabled': extensionsEnabled,
      'guestConfigurationEnabled': guestConfigurationEnabled,
      'incomingConnectionsPorts': incomingConnectionsPorts,
      'proxyBypasses': proxyBypasses,
      'proxyUrl': proxyUrl,
    };
  }

  factory GetAgent.fromMap(Map<String, dynamic> map) {
    return GetAgent(
      extensionsAllowLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentExtensionsAllowList>(map['extensionsAllowLists']!, (value) => GetAgentExtensionsAllowList.fromMap((value as Map).cast<String, dynamic>()))),
      extensionsBlockLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentExtensionsBlockList>(map['extensionsBlockLists']!, (value) => GetAgentExtensionsBlockList.fromMap((value as Map).cast<String, dynamic>()))),
      extensionsEnabled: pulumi.Input.fromValue(map['extensionsEnabled'] as bool),
      guestConfigurationEnabled: pulumi.Input.fromValue(map['guestConfigurationEnabled'] as bool),
      incomingConnectionsPorts: pulumi.Input.fromValue((map['incomingConnectionsPorts'] as List).cast<String>()),
      proxyBypasses: pulumi.Input.fromValue((map['proxyBypasses'] as List).cast<String>()),
      proxyUrl: pulumi.Input.fromValue(map['proxyUrl'] as String),
    );
  }
}

