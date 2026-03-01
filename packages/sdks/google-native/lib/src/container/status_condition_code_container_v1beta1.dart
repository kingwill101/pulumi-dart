/// Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
enum StatusConditionCodeContainerV1beta1 {
  unknown("UNKNOWN"),
  gceStockout("GCE_STOCKOUT"),
  gkeServiceAccountDeleted("GKE_SERVICE_ACCOUNT_DELETED"),
  gceQuotaExceeded("GCE_QUOTA_EXCEEDED"),
  setByOperator("SET_BY_OPERATOR"),
  cloudKmsKeyError("CLOUD_KMS_KEY_ERROR"),
  caExpiring("CA_EXPIRING");

  const StatusConditionCodeContainerV1beta1(this.value);
  final String value;

  static StatusConditionCodeContainerV1beta1 fromValue(String value) {
    for (final item in StatusConditionCodeContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusConditionCodeContainerV1beta1 value: $value');
  }
}

