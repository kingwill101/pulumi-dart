/// Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.
enum ApiProductQuotaCounterScope {
  quotaCounterScopeUnspecified("QUOTA_COUNTER_SCOPE_UNSPECIFIED"),
  proxy("PROXY"),
  operation("OPERATION");

  const ApiProductQuotaCounterScope(this.wireValue);
  final String wireValue;

  static ApiProductQuotaCounterScope fromValue(String value) {
    for (final item in ApiProductQuotaCounterScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiProductQuotaCounterScope value: $value');
  }
}

