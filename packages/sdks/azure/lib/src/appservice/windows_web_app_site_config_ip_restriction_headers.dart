// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSiteConfigIpRestrictionHeaders {
  /// Specifies a list of Azure Front Door IDs.
  final pulumi.Input<List<String>>? xAzureFdids;
  /// Specifies if a Front Door Health Probe should be expected. The only possible value is `1`.
  final pulumi.Input<String>? xFdHealthProbe;
  /// Specifies a list of addresses for which matching should be applied. Omitting this value means allow any.
  final pulumi.Input<List<String>>? xForwardedFors;
  /// Specifies a list of Hosts for which matching should be applied.
  final pulumi.Input<List<String>>? xForwardedHosts;

  /// Creates a new [WindowsWebAppSiteConfigIpRestrictionHeaders].
  /// [xAzureFdids] Specifies a list of Azure Front Door IDs.
  /// [xFdHealthProbe] Specifies if a Front Door Health Probe should be expected. The only possible value is `1`.
  /// [xForwardedFors] Specifies a list of addresses for which matching should be applied. Omitting this value means allow any.
  /// [xForwardedHosts] Specifies a list of Hosts for which matching should be applied.
  WindowsWebAppSiteConfigIpRestrictionHeaders({
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

  factory WindowsWebAppSiteConfigIpRestrictionHeaders.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigIpRestrictionHeaders(
      xAzureFdids: (() { final guardedValue = map['xAzureFdids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      xFdHealthProbe: (() { final guardedValue = map['xFdHealthProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xForwardedFors: (() { final guardedValue = map['xForwardedFors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      xForwardedHosts: (() { final guardedValue = map['xForwardedHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

