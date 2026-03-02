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
  PutAliasRequestAdditionalProperties({
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
      managementGroupId: map['managementGroupId'] == null ? null : (map['managementGroupId'] as String).input(),
      subscriptionOwnerId: map['subscriptionOwnerId'] == null ? null : (map['subscriptionOwnerId'] as String).input(),
      subscriptionTenantId: map['subscriptionTenantId'] == null ? null : (map['subscriptionTenantId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

