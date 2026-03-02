// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppSiteConfigIpRestrictionHeaders {
  /// Specifies a list of Azure Front Door IDs.
  final pulumi.Input<List<String>>? xAzureFdids;
  /// Specifies if a Front Door Health Probe should be expected. The only possible value is `1`.
  final pulumi.Input<String>? xFdHealthProbe;
  /// Specifies a list of addresses for which matching should be applied. Omitting this value means allow any.
  final pulumi.Input<List<String>>? xForwardedFors;
  /// Specifies a list of Hosts for which matching should be applied.
  final pulumi.Input<List<String>>? xForwardedHosts;

  /// Creates a new [WindowsFunctionAppSiteConfigIpRestrictionHeaders].
  /// [xAzureFdids] Specifies a list of Azure Front Door IDs.
  /// [xFdHealthProbe] Specifies if a Front Door Health Probe should be expected. The only possible value is `1`.
  /// [xForwardedFors] Specifies a list of addresses for which matching should be applied. Omitting this value means allow any.
  /// [xForwardedHosts] Specifies a list of Hosts for which matching should be applied.
  WindowsFunctionAppSiteConfigIpRestrictionHeaders({
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

  factory WindowsFunctionAppSiteConfigIpRestrictionHeaders.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSiteConfigIpRestrictionHeaders(
      xAzureFdids: map['xAzureFdids'] == null ? null : ((map['xAzureFdids']! as List).cast<String>()).input(),
      xFdHealthProbe: map['xFdHealthProbe'] == null ? null : (map['xFdHealthProbe']! as String).input(),
      xForwardedFors: map['xForwardedFors'] == null ? null : ((map['xForwardedFors']! as List).cast<String>()).input(),
      xForwardedHosts: map['xForwardedHosts'] == null ? null : ((map['xForwardedHosts']! as List).cast<String>()).input(),
    );
  }
}

