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
  const ListConnectionConsentLinksArgs({
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
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConsentLinkParameterDefinition>(guardedValue, (value) => ConsentLinkParameterDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

