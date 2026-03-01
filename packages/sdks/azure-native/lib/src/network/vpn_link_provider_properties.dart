// ignore_for_file: unused_element, unnecessary_cast


/// List of properties of a link provider.
class VpnLinkProviderProperties {
  /// Name of the link provider.
  final String? linkProviderName;
  /// Link speed.
  final int? linkSpeedInMbps;

  /// Creates a new [VpnLinkProviderProperties].
  /// [linkProviderName] Name of the link provider.
  /// [linkSpeedInMbps] Link speed.
  VpnLinkProviderProperties({
    this.linkProviderName,
    this.linkSpeedInMbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkProviderName': ?linkProviderName,
      'linkSpeedInMbps': ?linkSpeedInMbps,
    };
  }

  factory VpnLinkProviderProperties.fromMap(Map<String, dynamic> map) {
    return VpnLinkProviderProperties(
      linkProviderName: map['linkProviderName'] == null ? null : map['linkProviderName'] as String,
      linkSpeedInMbps: map['linkSpeedInMbps'] == null ? null : map['linkSpeedInMbps'] as int,
    );
  }
}

