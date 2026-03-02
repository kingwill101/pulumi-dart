// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_pricing_extension.dart';

/// Input properties used for looking up and filtering SubscriptionPricing resources.
class SubscriptionPricingState {
  /// One or more `extension` blocks as defined below.
  final pulumi.Input<List<SubscriptionPricingExtension>>? extensions;
  /// The resource type this setting affects. Possible values are `AI`, `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs` and `CloudPosture`. Defaults to `VirtualMachines`
  final pulumi.Input<String>? resourceType;
  /// Resource type pricing subplan. Contact your MSFT representative for possible values. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subplan;
  /// The pricing tier to use. Possible values are `Free` and `Standard`.
  final pulumi.Input<String>? tier;

  /// Creates a new [SubscriptionPricingState].
  /// [extensions] One or more `extension` blocks as defined below.
  /// [resourceType] The resource type this setting affects. Possible values are `AI`, `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs` and `CloudPosture`. Defaults to `VirtualMachines`
  /// [subplan] Resource type pricing subplan. Contact your MSFT representative for possible values. Changing this forces a new resource to be created.
  /// [tier] The pricing tier to use. Possible values are `Free` and `Standard`.
  SubscriptionPricingState({
    this.extensions,
    this.resourceType,
    this.subplan,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionPricingExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<SubscriptionPricingExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceType': ?resourceType,
      'subplan': ?subplan,
      'tier': ?tier,
    };
  }

  factory SubscriptionPricingState.fromMap(Map<String, dynamic> map) {
    return SubscriptionPricingState(
      extensions: map['extensions'] == null ? null : (pulumi.Input.decodeList<SubscriptionPricingExtension>(map['extensions']!, (value) => SubscriptionPricingExtension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
      subplan: map['subplan'] == null ? null : (map['subplan']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

