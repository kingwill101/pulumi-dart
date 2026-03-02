// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStandardSiteConfigIpRestrictionHeaders {
  /// A list of allowed Azure FrontDoor IDs in UUID notation.
  final pulumi.Input<List<String>> xAzureFdids;
  /// A list to allow the Azure FrontDoor health probe header.
  final pulumi.Input<String> xFdHealthProbe;
  /// A list of allowed 'X-Forwarded-For' IPs in CIDR notation.
  final pulumi.Input<List<String>> xForwardedFors;
  /// A list of allowed 'X-Forwarded-Host' domains.
  final pulumi.Input<List<String>> xForwardedHosts;

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
      xAzureFdids: ((map['xAzureFdids'] as List).cast<String>()).input(),
      xFdHealthProbe: (map['xFdHealthProbe'] as String).input(),
      xForwardedFors: ((map['xForwardedFors'] as List).cast<String>()).input(),
      xForwardedHosts: ((map['xForwardedHosts'] as List).cast<String>()).input(),
    );
  }
}

