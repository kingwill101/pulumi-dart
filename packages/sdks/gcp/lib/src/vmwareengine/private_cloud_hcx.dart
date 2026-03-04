// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateCloudHcx {
  /// Fully qualified domain name of the appliance.
  final pulumi.Input<String>? fqdn;

  /// Internal IP address of the appliance.
  final pulumi.Input<String>? internalIp;

  /// State of the appliance.
  /// Possible values are: `ACTIVE`, `CREATING`.
  final pulumi.Input<String>? state;

  /// Version of the appliance.
  final pulumi.Input<String>? version;

  /// Creates a new [PrivateCloudHcx].
  /// [fqdn] Fully qualified domain name of the appliance.
  /// [internalIp] Internal IP address of the appliance.
  /// [state] State of the appliance.
  /// [version] Version of the appliance.
  PrivateCloudHcx({this.fqdn, this.internalIp, this.state, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'internalIp': ?internalIp,
      'state': ?state,
      'version': ?version,
    };
  }

  factory PrivateCloudHcx.fromMap(Map<String, dynamic> map) {
    return PrivateCloudHcx(
      fqdn: (() {
        final guardedValue = map['fqdn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internalIp: (() {
        final guardedValue = map['internalIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
