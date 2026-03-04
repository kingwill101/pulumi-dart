// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_proxy_base.dart';

/// {@template pulumi_recoveryservices_resource_guard_proxy_args_doc}
/// The set of arguments for ResourceGuardProxy.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_resource_guard_proxy_args_doc}
class ResourceGuardProxyArgs {
  /// Optional ETag.
  final pulumi.Input<String>? eTag;

  /// Resource location.
  final pulumi.Input<String>? location;

  /// ResourceGuardProxyBaseResource properties
  final pulumi.Input<ResourceGuardProxyBase>? properties;

  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? resourceGuardProxyName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [ResourceGuardProxyArgs].
  /// [eTag] Optional ETag.
  /// [location] Resource location.
  /// [properties] ResourceGuardProxyBaseResource properties
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceGuardProxyName] Optional.
  /// [tags] Resource tags.
  /// [vaultName] The name of the recovery services vault.
  ResourceGuardProxyArgs({
    this.eTag,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.resourceGuardProxyName,
    this.tags,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'location': ?location,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceGuardProxyBase,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceGuardProxyName': ?resourceGuardProxyName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory ResourceGuardProxyArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGuardProxyArgs(
      eTag: (() {
        final guardedValue = map['eTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceGuardProxyBase.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceGuardProxyName: (() {
        final guardedValue = map['resourceGuardProxyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}
