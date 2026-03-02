// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_link_parameter_definition.dart';

/// {@template pulumi_web_list_connection_consent_links_args_doc}
/// Arguments for listConnectionConsentLinks.
/// {@endtemplate}
/// {@macro pulumi_web_list_connection_consent_links_args_doc}
class ListConnectionConsentLinksArgs {
  /// Connection name
  final pulumi.Input<String> connectionName;
  /// Collection of resources
  final pulumi.Input<List<ConsentLinkParameterDefinition>>? parameters;
  /// The resource group
  final pulumi.Input<String> resourceGroupName;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [ListConnectionConsentLinksArgs].
  /// [connectionName] Connection name
  /// [parameters] Collection of resources
  /// [resourceGroupName] The resource group
  /// [subscriptionId] Subscription Id
  ListConnectionConsentLinksArgs({
    required this.connectionName,
    this.parameters,
    required this.resourceGroupName,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ConsentLinkParameterDefinition>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ConsentLinkParameterDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory ListConnectionConsentLinksArgs.fromMap(Map<String, dynamic> map) {
    return ListConnectionConsentLinksArgs(
      connectionName: (map['connectionName'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ConsentLinkParameterDefinition>(map['parameters']!, (value) => ConsentLinkParameterDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

