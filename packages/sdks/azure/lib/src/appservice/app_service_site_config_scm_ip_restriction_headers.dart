// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppServiceSiteConfigScmIpRestrictionHeaders {
  /// A list of allowed Azure FrontDoor IDs in UUID notation with a maximum of 8.
  final pulumi.Input<List<String>>? xAzureFdids;
  /// A list to allow the Azure FrontDoor health probe header. Only allowed value is "1".
  final pulumi.Input<String>? xFdHealthProbe;
  /// A list of allowed 'X-Forwarded-For' IPs in CIDR notation with a maximum of 8
  final pulumi.Input<List<String>>? xForwardedFors;
  /// A list of allowed 'X-Forwarded-Host' domains with a maximum of 8.
  final pulumi.Input<List<String>>? xForwardedHosts;

  /// Creates a new [AppServiceSiteConfigScmIpRestrictionHeaders].
  /// [xAzureFdids] A list of allowed Azure FrontDoor IDs in UUID notation with a maximum of 8.
  /// [xFdHealthProbe] A list to allow the Azure FrontDoor health probe header. Only allowed value is "1".
  /// [xForwardedFors] A list of allowed 'X-Forwarded-For' IPs in CIDR notation with a maximum of 8
  /// [xForwardedHosts] A list of allowed 'X-Forwarded-Host' domains with a maximum of 8.
  AppServiceSiteConfigScmIpRestrictionHeaders({
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

  factory AppServiceSiteConfigScmIpRestrictionHeaders.fromMap(Map<String, dynamic> map) {
    return AppServiceSiteConfigScmIpRestrictionHeaders(
      xAzureFdids: map['xAzureFdids'] == null ? null : ((map['xAzureFdids'] as List).cast<String>()).input(),
      xFdHealthProbe: map['xFdHealthProbe'] == null ? null : (map['xFdHealthProbe'] as String).input(),
      xForwardedFors: map['xForwardedFors'] == null ? null : ((map['xForwardedFors'] as List).cast<String>()).input(),
      xForwardedHosts: map['xForwardedHosts'] == null ? null : ((map['xForwardedHosts'] as List).cast<String>()).input(),
    );
  }
}

