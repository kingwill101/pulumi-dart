// ignore_for_file: unused_element, unnecessary_cast


class AppFlexConsumptionSiteConfigIpRestrictionHeaders {
  /// Specifies a list of Azure Front Door IDs.
  final List<String>? xAzureFdids;
  /// Specifies if a Front Door Health Probe should be expected. The only possible value is `1`.
  final String? xFdHealthProbe;
  /// Specifies a list of addresses for which matching should be applied. Omitting this value means allow any.
  final List<String>? xForwardedFors;
  /// Specifies a list of Hosts for which matching should be applied.
  final List<String>? xForwardedHosts;

  /// Creates a new [AppFlexConsumptionSiteConfigIpRestrictionHeaders].
  /// [xAzureFdids] Specifies a list of Azure Front Door IDs.
  /// [xFdHealthProbe] Specifies if a Front Door Health Probe should be expected. The only possible value is `1`.
  /// [xForwardedFors] Specifies a list of addresses for which matching should be applied. Omitting this value means allow any.
  /// [xForwardedHosts] Specifies a list of Hosts for which matching should be applied.
  AppFlexConsumptionSiteConfigIpRestrictionHeaders({
    this.xAzureFdids,
    this.xFdHealthProbe,
    this.xForwardedFors,
    this.xForwardedHosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'xAzureFdids': ?xAzureFdids,
      'xFdHealthProbe': ?xFdHealthProbe,
      'xForwardedFors': ?xForwardedFors,
      'xForwardedHosts': ?xForwardedHosts,
    };
  }

  factory AppFlexConsumptionSiteConfigIpRestrictionHeaders.fromMap(Map<String, dynamic> map) {
    return AppFlexConsumptionSiteConfigIpRestrictionHeaders(
      xAzureFdids: map['xAzureFdids'] == null ? null : (map['xAzureFdids'] as List).cast<String>(),
      xFdHealthProbe: map['xFdHealthProbe'] == null ? null : map['xFdHealthProbe'] as String,
      xForwardedFors: map['xForwardedFors'] == null ? null : (map['xForwardedFors'] as List).cast<String>(),
      xForwardedHosts: map['xForwardedHosts'] == null ? null : (map['xForwardedHosts'] as List).cast<String>(),
    );
  }
}

