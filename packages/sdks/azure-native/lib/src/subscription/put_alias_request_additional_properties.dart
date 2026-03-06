// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Put subscription additional properties.
class PutAliasRequestAdditionalProperties {
  /// Management group Id for the subscription.
  final pulumi.Input<String>? managementGroupId;
  /// Owner Id of the subscription
  final pulumi.Input<String>? subscriptionOwnerId;
  /// Tenant Id of the subscription
  final pulumi.Input<String>? subscriptionTenantId;
  /// Tags for the subscription
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PutAliasRequestAdditionalProperties].
  /// [managementGroupId] Management group Id for the subscription.
  /// [subscriptionOwnerId] Owner Id of the subscription
  /// [subscriptionTenantId] Tenant Id of the subscription
  /// [tags] Tags for the subscription
  const PutAliasRequestAdditionalProperties({
    this.managementGroupId,
    this.subscriptionOwnerId,
    this.subscriptionTenantId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': ?managementGroupId,
      'subscriptionOwnerId': ?subscriptionOwnerId,
      'subscriptionTenantId': ?subscriptionTenantId,
      'tags': ?tags,
    };
  }

  factory PutAliasRequestAdditionalProperties.fromMap(Map<String, dynamic> map) {
    return PutAliasRequestAdditionalProperties(
      managementGroupId: (() { final guardedValue = map['managementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionOwnerId: (() { final guardedValue = map['subscriptionOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionTenantId: (() { final guardedValue = map['subscriptionTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

