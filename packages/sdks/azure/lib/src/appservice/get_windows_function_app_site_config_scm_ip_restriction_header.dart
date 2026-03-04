// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFunctionAppSiteConfigScmIpRestrictionHeader {
  /// The list of Azure Front Door IDs.
  final pulumi.Input<List<String>> xAzureFdids;

  /// Specifies if a Front Door Health Probe is expected.
  final pulumi.Input<List<String>> xFdHealthProbes;

  /// The list of addresses for which matching is applied.
  final pulumi.Input<List<String>> xForwardedFors;

  /// The list of Hosts for which matching will be applied.
  final pulumi.Input<List<String>> xForwardedHosts;

  /// Creates a new [GetWindowsFunctionAppSiteConfigScmIpRestrictionHeader].
  /// [xAzureFdids] The list of Azure Front Door IDs.
  /// [xFdHealthProbes] Specifies if a Front Door Health Probe is expected.
  /// [xForwardedFors] The list of addresses for which matching is applied.
  /// [xForwardedHosts] The list of Hosts for which matching will be applied.
  GetWindowsFunctionAppSiteConfigScmIpRestrictionHeader({
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

  factory GetWindowsFunctionAppSiteConfigScmIpRestrictionHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWindowsFunctionAppSiteConfigScmIpRestrictionHeader(
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
