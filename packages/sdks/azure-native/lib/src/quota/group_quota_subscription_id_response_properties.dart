// ignore_for_file: unused_element, unnecessary_cast


class GroupQuotaSubscriptionIdResponseProperties {
  /// Status of this subscriptionId being associated with the GroupQuotasEntity.
  final String provisioningState;
  /// An Azure subscriptionId.
  final String? subscriptionId;

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
      provisioningState: map['provisioningState'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

