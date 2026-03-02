// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxFunctionAppSiteConfigIpRestrictionHeader {
  /// A list of Azure Front Door IDs.
  final pulumi.Input<List<String>> xAzureFdids;
  /// Should a Front Door Health Probe be expected?
  final pulumi.Input<List<String>> xFdHealthProbes;
  /// A list of addresses for which matching is applied.
  final pulumi.Input<List<String>> xForwardedFors;
  /// A list of Hosts for which matching is applied.
  final pulumi.Input<List<String>> xForwardedHosts;

  /// Creates a new [GetLinuxFunctionAppSiteConfigIpRestrictionHeader].
  /// [xAzureFdids] A list of Azure Front Door IDs.
  /// [xFdHealthProbes] Should a Front Door Health Probe be expected?
  /// [xForwardedFors] A list of addresses for which matching is applied.
  /// [xForwardedHosts] A list of Hosts for which matching is applied.
  GetLinuxFunctionAppSiteConfigIpRestrictionHeader({
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

  factory GetLinuxFunctionAppSiteConfigIpRestrictionHeader.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppSiteConfigIpRestrictionHeader(
      xAzureFdids: ((map['xAzureFdids'] as List).cast<String>()).input(),
      xFdHealthProbes: ((map['xFdHealthProbes'] as List).cast<String>()).input(),
      xForwardedFors: ((map['xForwardedFors'] as List).cast<String>()).input(),
      xForwardedHosts: ((map['xForwardedHosts'] as List).cast<String>()).input(),
    );
  }
}

