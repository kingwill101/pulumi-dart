// ignore_for_file: unused_element, unnecessary_cast


/// The private IP addresses/IP ranges to which traffic will not be SNAT.
class FirewallPolicySNATResponse {
  /// The operation mode for automatically learning private ranges to not be SNAT
  final String? autoLearnPrivateRanges;
  /// List of private IP addresses/IP address ranges to not be SNAT.
  final List<String>? privateRanges;

  /// Creates a new [FirewallPolicySNATResponse].
  /// [autoLearnPrivateRanges] The operation mode for automatically learning private ranges to not be SNAT
  /// [privateRanges] List of private IP addresses/IP address ranges to not be SNAT.
  FirewallPolicySNATResponse({
    this.autoLearnPrivateRanges,
    this.privateRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoLearnPrivateRanges': ?autoLearnPrivateRanges,
      'privateRanges': ?privateRanges,
    };
  }

  factory FirewallPolicySNATResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicySNATResponse(
      autoLearnPrivateRanges: map['autoLearnPrivateRanges'] == null ? null : map['autoLearnPrivateRanges'] as String,
      privateRanges: map['privateRanges'] == null ? null : (map['privateRanges'] as List).cast<String>(),
    );
  }
}

