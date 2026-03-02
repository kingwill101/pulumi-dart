// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppServiceSiteConfigIpRestrictionHeaders {
  final pulumi.Input<List<String>> xAzureFdids;
  final pulumi.Input<List<String>> xFdHealthProbes;
  final pulumi.Input<List<String>> xForwardedFors;
  final pulumi.Input<List<String>> xForwardedHosts;

  /// Creates a new [GetAppServiceSiteConfigIpRestrictionHeaders].
  /// [xAzureFdids] Required.
  /// [xFdHealthProbes] Required.
  /// [xForwardedFors] Required.
  /// [xForwardedHosts] Required.
  GetAppServiceSiteConfigIpRestrictionHeaders({
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

  factory GetAppServiceSiteConfigIpRestrictionHeaders.fromMap(Map<String, dynamic> map) {
    return GetAppServiceSiteConfigIpRestrictionHeaders(
      xAzureFdids: ((map['xAzureFdids'] as List).cast<String>()).input(),
      xFdHealthProbes: ((map['xFdHealthProbes'] as List).cast<String>()).input(),
      xForwardedFors: ((map['xForwardedFors'] as List).cast<String>()).input(),
      xForwardedHosts: ((map['xForwardedHosts'] as List).cast<String>()).input(),
    );
  }
}

