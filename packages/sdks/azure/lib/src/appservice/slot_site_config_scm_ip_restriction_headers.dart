// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlotSiteConfigScmIpRestrictionHeaders {
  /// A list of allowed Azure FrontDoor IDs in UUID notation with a maximum of 8.
  final pulumi.Input<List<String>>? xAzureFdids;

  /// A list to allow the Azure FrontDoor health probe header. Only allowed value is "1".
  final pulumi.Input<String>? xFdHealthProbe;

  /// A list of allowed 'X-Forwarded-For' IPs in CIDR notation with a maximum of 8
  final pulumi.Input<List<String>>? xForwardedFors;

  /// A list of allowed 'X-Forwarded-Host' domains with a maximum of 8.
  final pulumi.Input<List<String>>? xForwardedHosts;

  /// Creates a new [SlotSiteConfigScmIpRestrictionHeaders].
  /// [xAzureFdids] A list of allowed Azure FrontDoor IDs in UUID notation with a maximum of 8.
  /// [xFdHealthProbe] A list to allow the Azure FrontDoor health probe header. Only allowed value is "1".
  /// [xForwardedFors] A list of allowed 'X-Forwarded-For' IPs in CIDR notation with a maximum of 8
  /// [xForwardedHosts] A list of allowed 'X-Forwarded-Host' domains with a maximum of 8.
  SlotSiteConfigScmIpRestrictionHeaders({
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

  factory SlotSiteConfigScmIpRestrictionHeaders.fromMap(
    Map<String, dynamic> map,
  ) {
    return SlotSiteConfigScmIpRestrictionHeaders(
      xAzureFdids: (() {
        final guardedValue = map['xAzureFdids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      xFdHealthProbe: (() {
        final guardedValue = map['xFdHealthProbe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      xForwardedFors: (() {
        final guardedValue = map['xForwardedFors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      xForwardedHosts: (() {
        final guardedValue = map['xForwardedHosts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
