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
    required pulumi.Output<String> connectionName,
    pulumi.Output<List<ConsentLinkParameterDefinition>>? parameters,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      parameters = pulumi.Input.asOptionalInput<List<ConsentLinkParameterDefinition>>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

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
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<ConsentLinkParameterDefinition>>(pulumi.Input.decodeList<ConsentLinkParameterDefinition>(map['parameters'], (value) => ConsentLinkParameterDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

