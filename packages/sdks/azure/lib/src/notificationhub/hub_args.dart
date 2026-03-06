// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_apns_credential.dart';
import 'hub_browser_credential.dart';
import 'hub_gcm_credential.dart';

/// {@template pulumi_notificationhub_hub_hub_args_doc}
/// The set of arguments for Hub.
/// {@endtemplate}
/// {@macro pulumi_notificationhub_hub_hub_args_doc}
class HubArgs {
  /// A `apns_credential` block as defined below.
  ///
  /// &gt; **Note:** Removing the `apns_credential` block will currently force a recreation of this resource [due to this bug in the Azure SDK for Go](https://github.com/Azure/azure-sdk-for-go/issues/2246) - we'll remove this limitation when the SDK bug is fixed.
  final pulumi.Input<HubApnsCredential>? apnsCredential;
  /// A `browser_credential` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HubBrowserCredential>? browserCredential;
  /// A `gcm_credential` block as defined below.
  ///
  /// &gt; **Note:** Removing the `gcm_credential` block will currently force a recreation of this resource [due to this bug in the Azure SDK for Go](https://github.com/Azure/azure-sdk-for-go/issues/2246) - we'll remove this limitation when the SDK bug is fixed.
  final pulumi.Input<HubGcmCredential>? gcmCredential;
  /// The Azure Region in which this Notification Hub Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name to use for this Notification Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Notification Hub Namespace in which to create this Notification Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String> namespaceName;
  /// The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HubArgs].
  /// [apnsCredential] A `apns_credential` block as defined below.
  /// [browserCredential] A `browser_credential` block as defined below. Changing this forces a new resource to be created.
  /// [gcmCredential] A `gcm_credential` block as defined below.
  /// [location] The Azure Region in which this Notification Hub Namespace exists. Changing this forces a new resource to be created.
  /// [name] The name to use for this Notification Hub. Changing this forces a new resource to be created.
  /// [namespaceName] The name of the Notification Hub Namespace in which to create this Notification Hub. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const HubArgs({
    this.apnsCredential,
    this.browserCredential,
    this.gcmCredential,
    this.location,
    this.name,
    required this.namespaceName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apnsCredential': ?pulumi.Input.mapOptionalInputValue<HubApnsCredential, Map<String, dynamic>>(apnsCredential, (value) => value.toMap()),
      'browserCredential': ?pulumi.Input.mapOptionalInputValue<HubBrowserCredential, Map<String, dynamic>>(browserCredential, (value) => value.toMap()),
      'gcmCredential': ?pulumi.Input.mapOptionalInputValue<HubGcmCredential, Map<String, dynamic>>(gcmCredential, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory HubArgs.fromMap(Map<String, dynamic> map) {
    return HubArgs(
      apnsCredential: (() { final guardedValue = map['apnsCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HubApnsCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      browserCredential: (() { final guardedValue = map['browserCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HubBrowserCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcmCredential: (() { final guardedValue = map['gcmCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HubGcmCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

