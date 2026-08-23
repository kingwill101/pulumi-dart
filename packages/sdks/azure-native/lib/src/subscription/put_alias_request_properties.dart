// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'put_alias_request_additional_properties.dart';

/// Put subscription properties.
class PutAliasRequestProperties {
  /// Put alias request additional properties.
  final pulumi.Input<PutAliasRequestAdditionalProperties>? additionalProperties;
  /// Billing scope of the subscription.
  /// For CustomerLed and FieldLed - /billingAccounts/{billingAccountName}/billingProfiles/{billingProfileName}/invoiceSections/{invoiceSectionName}
  /// For PartnerLed - /billingAccounts/{billingAccountName}/customers/{customerName}
  /// For Legacy EA - /billingAccounts/{billingAccountName}/enrollmentAccounts/{enrollmentAccountName}
  final pulumi.Input<String>? billingScope;
  /// The friendly name of the subscription.
  final pulumi.Input<String>? displayName;
  /// Reseller Id
  final pulumi.Input<String>? resellerId;
  /// This parameter can be used to create alias for existing subscription Id
  final pulumi.Input<String>? subscriptionId;
  /// The workload type of the subscription. It can be either Production or DevTest.
  final pulumi.Input<String>? workload;

  /// Creates a new [PutAliasRequestProperties].
  /// [additionalProperties] Put alias request additional properties.
  /// [billingScope] Billing scope of the subscription.
  /// [displayName] The friendly name of the subscription.
  /// [resellerId] Reseller Id
  /// [subscriptionId] This parameter can be used to create alias for existing subscription Id
  /// [workload] The workload type of the subscription. It can be either Production or DevTest.
  const PutAliasRequestProperties({
    this.additionalProperties,
    this.billingScope,
    this.displayName,
    this.resellerId,
    this.subscriptionId,
    this.workload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?pulumi.Input.mapOptionalInputValue<PutAliasRequestAdditionalProperties, Map<String, dynamic>>(additionalProperties, (value) => value.toMap()),
      'billingScope': ?billingScope,
      'displayName': ?displayName,
      'resellerId': ?resellerId,
      'subscriptionId': ?subscriptionId,
      'workload': ?workload,
    };
  }

  factory PutAliasRequestProperties.fromMap(Map<String, dynamic> map) {
    return PutAliasRequestProperties(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PutAliasRequestAdditionalProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      billingScope: (() { final guardedValue = map['billingScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resellerId: (() { final guardedValue = map['resellerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workload: (() { final guardedValue = map['workload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
