// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppSiteConfigScmIpRestrictionHeader {
  /// The list of Azure Front Door IDs.
  final List<String> xAzureFdids;
  /// Specifies if a Front Door Health Probe is expected.
  final List<String> xFdHealthProbes;
  /// The list of addresses for which matching is applied.
  final List<String> xForwardedFors;
  /// The list of Hosts for which matching will be applied.
  final List<String> xForwardedHosts;

  /// Creates a new [GetLinuxWebAppSiteConfigScmIpRestrictionHeader].
  /// [xAzureFdids] The list of Azure Front Door IDs.
  /// [xFdHealthProbes] Specifies if a Front Door Health Probe is expected.
  /// [xForwardedFors] The list of addresses for which matching is applied.
  /// [xForwardedHosts] The list of Hosts for which matching will be applied.
  GetLinuxWebAppSiteConfigScmIpRestrictionHeader({
    required this.xAzureFdids,
    required this.xFdHealthProbes,
    required this.xForwardedFors,
    required this.xForwardedHosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'xAzureFdids': xAzureFdids,
      'xFdHealthProbes': xFdHealthProbes,
      'xForwardedFors': xForwardedFors,
      'xForwardedHosts': xForwardedHosts,
    };
  }

  factory GetLinuxWebAppSiteConfigScmIpRestrictionHeader.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigScmIpRestrictionHeader(
      xAzureFdids: (map['xAzureFdids'] as List).cast<String>(),
      xFdHealthProbes: (map['xFdHealthProbes'] as List).cast<String>(),
      xForwardedFors: (map['xForwardedFors'] as List).cast<String>(),
      xForwardedHosts: (map['xForwardedHosts'] as List).cast<String>(),
    );
  }
}

