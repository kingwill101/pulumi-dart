// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listFirewallPolicyIdpsSignaturesFilterValue.
class ListFirewallPolicyIdpsSignaturesFilterValueResult {
  /// Describes the possible values
  final List<String>? filterValues;

  /// Creates a new [ListFirewallPolicyIdpsSignaturesFilterValueResult].
  /// [filterValues] Describes the possible values
  ListFirewallPolicyIdpsSignaturesFilterValueResult({
    this.filterValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterValues': ?filterValues,
    };
  }

  factory ListFirewallPolicyIdpsSignaturesFilterValueResult.fromMap(Map<String, dynamic> map) {
    return ListFirewallPolicyIdpsSignaturesFilterValueResult(
      filterValues: (() { final guardedValue = map['filterValues']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

