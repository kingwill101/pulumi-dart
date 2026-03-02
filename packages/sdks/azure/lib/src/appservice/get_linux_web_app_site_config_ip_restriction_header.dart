// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppSiteConfigIpRestrictionHeader {
  /// The list of Azure Front Door IDs.
  final pulumi.Input<List<String>> xAzureFdids;
  /// Specifies if a Front Door Health Probe is expected.
  final pulumi.Input<List<String>> xFdHealthProbes;
  /// The list of addresses for which matching is applied.
  final pulumi.Input<List<String>> xForwardedFors;
  /// The list of Hosts for which matching will be applied.
  final pulumi.Input<List<String>> xForwardedHosts;

  /// Creates a new [GetLinuxWebAppSiteConfigIpRestrictionHeader].
  /// [xAzureFdids] The list of Azure Front Door IDs.
  /// [xFdHealthProbes] Specifies if a Front Door Health Probe is expected.
  /// [xForwardedFors] The list of addresses for which matching is applied.
  /// [xForwardedHosts] The list of Hosts for which matching will be applied.
  GetLinuxWebAppSiteConfigIpRestrictionHeader({
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

  factory GetLinuxWebAppSiteConfigIpRestrictionHeader.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigIpRestrictionHeader(
      xAzureFdids: ((map['xAzureFdids'] as List).cast<String>()).input(),
      xFdHealthProbes: ((map['xFdHealthProbes'] as List).cast<String>()).input(),
      xForwardedFors: ((map['xForwardedFors'] as List).cast<String>()).input(),
      xForwardedHosts: ((map['xForwardedHosts'] as List).cast<String>()).input(),
    );
  }
}

