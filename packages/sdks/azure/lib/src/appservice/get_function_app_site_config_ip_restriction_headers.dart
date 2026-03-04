// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionAppSiteConfigIpRestrictionHeaders {
  final pulumi.Input<List<String>> xAzureFdids;
  final pulumi.Input<List<String>> xFdHealthProbes;
  final pulumi.Input<List<String>> xForwardedFors;
  final pulumi.Input<List<String>> xForwardedHosts;

  /// Creates a new [GetFunctionAppSiteConfigIpRestrictionHeaders].
  /// [xAzureFdids] Required.
  /// [xFdHealthProbes] Required.
  /// [xForwardedFors] Required.
  /// [xForwardedHosts] Required.
  GetFunctionAppSiteConfigIpRestrictionHeaders({
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

  factory GetFunctionAppSiteConfigIpRestrictionHeaders.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFunctionAppSiteConfigIpRestrictionHeaders(
      xAzureFdids: pulumi.Input.fromValue(
        (map['xAzureFdids'] as List).cast<String>(),
      ),
      xFdHealthProbes: pulumi.Input.fromValue(
        (map['xFdHealthProbes'] as List).cast<String>(),
      ),
      xForwardedFors: pulumi.Input.fromValue(
        (map['xForwardedFors'] as List).cast<String>(),
      ),
      xForwardedHosts: pulumi.Input.fromValue(
        (map['xForwardedHosts'] as List).cast<String>(),
      ),
    );
  }
}
