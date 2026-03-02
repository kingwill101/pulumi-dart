// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionAppSiteConfigScmIpRestrictionHeaders {
  final pulumi.Input<List<String>> xAzureFdids;
  final pulumi.Input<List<String>> xFdHealthProbes;
  final pulumi.Input<List<String>> xForwardedFors;
  final pulumi.Input<List<String>> xForwardedHosts;

  /// Creates a new [GetFunctionAppSiteConfigScmIpRestrictionHeaders].
  /// [xAzureFdids] Required.
  /// [xFdHealthProbes] Required.
  /// [xForwardedFors] Required.
  /// [xForwardedHosts] Required.
  GetFunctionAppSiteConfigScmIpRestrictionHeaders({
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

  factory GetFunctionAppSiteConfigScmIpRestrictionHeaders.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppSiteConfigScmIpRestrictionHeaders(
      xAzureFdids: ((map['xAzureFdids'] as List).cast<String>()).input(),
      xFdHealthProbes: ((map['xFdHealthProbes'] as List).cast<String>()).input(),
      xForwardedFors: ((map['xForwardedFors'] as List).cast<String>()).input(),
      xForwardedHosts: ((map['xForwardedHosts'] as List).cast<String>()).input(),
    );
  }
}

