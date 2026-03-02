// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupQuotaSubscriptionIdResponseProperties {
  /// Status of this subscriptionId being associated with the GroupQuotasEntity.
  final pulumi.Input<String> provisioningState;
  /// An Azure subscriptionId.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GroupQuotaSubscriptionIdResponseProperties].
  /// [provisioningState] Status of this subscriptionId being associated with the GroupQuotasEntity.
  /// [subscriptionId] An Azure subscriptionId.
  GroupQuotaSubscriptionIdResponseProperties({
    required this.provisioningState,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GroupQuotaSubscriptionIdResponseProperties.fromMap(Map<String, dynamic> map) {
    return GroupQuotaSubscriptionIdResponseProperties(
      provisioningState: (map['provisioningState'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

