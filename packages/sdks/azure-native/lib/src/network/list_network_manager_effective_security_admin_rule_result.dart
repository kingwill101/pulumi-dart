// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listNetworkManagerEffectiveSecurityAdminRule.
class ListNetworkManagerEffectiveSecurityAdminRuleResult {
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final String? skipToken;
  /// Gets a page of NetworkManagerEffectiveSecurityAdminRules
  final List<dynamic>? value;

  /// Creates a new [ListNetworkManagerEffectiveSecurityAdminRuleResult].
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [value] Gets a page of NetworkManagerEffectiveSecurityAdminRules
  const ListNetworkManagerEffectiveSecurityAdminRuleResult({
    this.skipToken,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?value,
    };
  }

  factory ListNetworkManagerEffectiveSecurityAdminRuleResult.fromMap(Map<String, dynamic> map) {
    return ListNetworkManagerEffectiveSecurityAdminRuleResult(
      skipToken: (() { final guardedValue = map['skipToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
    );
  }
}
