// ignore_for_file: unused_element, unnecessary_cast

import 'put_alias_request_additional_properties.dart';

/// Put subscription properties.
class PutAliasRequestProperties {
  /// Put alias request additional properties.
  final PutAliasRequestAdditionalProperties? additionalProperties;
  /// Billing scope of the subscription.
  /// For CustomerLed and FieldLed - /billingAccounts/{billingAccountName}/billingProfiles/{billingProfileName}/invoiceSections/{invoiceSectionName}
  /// For PartnerLed - /billingAccounts/{billingAccountName}/customers/{customerName}
  /// For Legacy EA - /billingAccounts/{billingAccountName}/enrollmentAccounts/{enrollmentAccountName}
  final String? billingScope;
  /// The friendly name of the subscription.
  final String? displayName;
  /// Reseller Id
  final String? resellerId;
  /// This parameter can be used to create alias for existing subscription Id
  final String? subscriptionId;
  /// The workload type of the subscription. It can be either Production or DevTest.
  final String? workload;

  /// Creates a new [PutAliasRequestProperties].
  /// [additionalProperties] Put alias request additional properties.
  /// [billingScope] Billing scope of the subscription.
  /// [displayName] The friendly name of the subscription.
  /// [resellerId] Reseller Id
  /// [subscriptionId] This parameter can be used to create alias for existing subscription Id
  /// [workload] The workload type of the subscription. It can be either Production or DevTest.
  PutAliasRequestProperties({
    this.additionalProperties,
    this.billingScope,
    this.displayName,
    this.resellerId,
    this.subscriptionId,
    this.workload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties == null ? null : additionalProperties!.toMap(),
      'billingScope': ?billingScope,
      'displayName': ?displayName,
      'resellerId': ?resellerId,
      'subscriptionId': ?subscriptionId,
      'workload': ?workload,
    };
  }

  factory PutAliasRequestProperties.fromMap(Map<String, dynamic> map) {
    return PutAliasRequestProperties(
      additionalProperties: map['additionalProperties'] == null ? null : PutAliasRequestAdditionalProperties.fromMap((map['additionalProperties'] as Map).cast<String, dynamic>()),
      billingScope: map['billingScope'] == null ? null : map['billingScope'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      resellerId: map['resellerId'] == null ? null : map['resellerId'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      workload: map['workload'] == null ? null : map['workload'] as String,
    );
  }
}

