// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_apns_credential.dart';
import 'hub_browser_credential.dart';
import 'hub_gcm_credential.dart';

/// Input properties used for looking up and filtering Hub resources.
class HubState {
  /// A `apns_credential` block as defined below.
  ///
  /// > **Note:** Removing the `apns_credential` block will currently force a recreation of this resource [due to this bug in the Azure SDK for Go](https://github.com/Azure/azure-sdk-for-go/issues/2246) - we'll remove this limitation when the SDK bug is fixed.
  final pulumi.Input<HubApnsCredential>? apnsCredential;
  /// A `browser_credential` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HubBrowserCredential>? browserCredential;
  /// A `gcm_credential` block as defined below.
  ///
  /// > **Note:** Removing the `gcm_credential` block will currently force a recreation of this resource [due to this bug in the Azure SDK for Go](https://github.com/Azure/azure-sdk-for-go/issues/2246) - we'll remove this limitation when the SDK bug is fixed.
  final pulumi.Input<HubGcmCredential>? gcmCredential;
  /// The Azure Region in which this Notification Hub Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name to use for this Notification Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Notification Hub Namespace in which to create this Notification Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? namespaceName;
  /// The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HubState].
  /// [apnsCredential] A `apns_credential` block as defined below.
  /// [browserCredential] A `browser_credential` block as defined below. Changing this forces a new resource to be created.
  /// [gcmCredential] A `gcm_credential` block as defined below.
  /// [location] The Azure Region in which this Notification Hub Namespace exists. Changing this forces a new resource to be created.
  /// [name] The name to use for this Notification Hub. Changing this forces a new resource to be created.
  /// [namespaceName] The name of the Notification Hub Namespace in which to create this Notification Hub. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  HubState({
    pulumi.Output<HubApnsCredential>? apnsCredential,
    pulumi.Output<HubBrowserCredential>? browserCredential,
    pulumi.Output<HubGcmCredential>? gcmCredential,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      apnsCredential = pulumi.Input.asOptionalInput<HubApnsCredential>(apnsCredential),
      browserCredential = pulumi.Input.asOptionalInput<HubBrowserCredential>(browserCredential),
      gcmCredential = pulumi.Input.asOptionalInput<HubGcmCredential>(gcmCredential),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apnsCredential': ?pulumi.Input.mapOptionalInputValue<HubApnsCredential, Map<String, dynamic>>(apnsCredential, (value) => value.toMap()),
      'browserCredential': ?pulumi.Input.mapOptionalInputValue<HubBrowserCredential, Map<String, dynamic>>(browserCredential, (value) => value.toMap()),
      'gcmCredential': ?pulumi.Input.mapOptionalInputValue<HubGcmCredential, Map<String, dynamic>>(gcmCredential, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory HubState.fromMap(Map<String, dynamic> map) {
    return HubState(
      apnsCredential: map['apnsCredential'] == null ? null : pulumi.Output.create<HubApnsCredential>(HubApnsCredential.fromMap((map['apnsCredential'] as Map).cast<String, dynamic>())),
      browserCredential: map['browserCredential'] == null ? null : pulumi.Output.create<HubBrowserCredential>(HubBrowserCredential.fromMap((map['browserCredential'] as Map).cast<String, dynamic>())),
      gcmCredential: map['gcmCredential'] == null ? null : pulumi.Output.create<HubGcmCredential>(HubGcmCredential.fromMap((map['gcmCredential'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

