// ignore_for_file: unused_element, unnecessary_cast


class GetStandardSiteConfigIpRestrictionHeaders {
  /// A list of allowed Azure FrontDoor IDs in UUID notation.
  final List<String> xAzureFdids;
  /// A list to allow the Azure FrontDoor health probe header.
  final String xFdHealthProbe;
  /// A list of allowed 'X-Forwarded-For' IPs in CIDR notation.
  final List<String> xForwardedFors;
  /// A list of allowed 'X-Forwarded-Host' domains.
  final List<String> xForwardedHosts;

  /// Creates a new [GetStandardSiteConfigIpRestrictionHeaders].
  /// [xAzureFdids] A list of allowed Azure FrontDoor IDs in UUID notation.
  /// [xFdHealthProbe] A list to allow the Azure FrontDoor health probe header.
  /// [xForwardedFors] A list of allowed 'X-Forwarded-For' IPs in CIDR notation.
  /// [xForwardedHosts] A list of allowed 'X-Forwarded-Host' domains.
  GetStandardSiteConfigIpRestrictionHeaders({
    required this.xAzureFdids,
    required this.xFdHealthProbe,
    required this.xForwardedFors,
    required this.xForwardedHosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'xAzureFdids': xAzureFdids,
      'xFdHealthProbe': xFdHealthProbe,
      'xForwardedFors': xForwardedFors,
      'xForwardedHosts': xForwardedHosts,
    };
  }

  factory GetStandardSiteConfigIpRestrictionHeaders.fromMap(Map<String, dynamic> map) {
    return GetStandardSiteConfigIpRestrictionHeaders(
      xAzureFdids: (map['xAzureFdids'] as List).cast<String>(),
      xFdHealthProbe: map['xFdHealthProbe'] as String,
      xForwardedFors: (map['xForwardedFors'] as List).cast<String>(),
      xForwardedHosts: (map['xForwardedHosts'] as List).cast<String>(),
    );
  }
}

