// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateCloudVcenter {
  /// Fully qualified domain name of the appliance.
  final pulumi.Input<String>? fqdn;
  /// Internal IP address of the appliance.
  final pulumi.Input<String>? internalIp;
  /// State of the appliance.
  /// Possible values are: `ACTIVE`, `CREATING`.
  final pulumi.Input<String>? state;
  /// Version of the appliance.
  final pulumi.Input<String>? version;

  /// Creates a new [PrivateCloudVcenter].
  /// [fqdn] Fully qualified domain name of the appliance.
  /// [internalIp] Internal IP address of the appliance.
  /// [state] State of the appliance.
  /// [version] Version of the appliance.
  PrivateCloudVcenter({
    this.fqdn,
    this.internalIp,
    this.state,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'internalIp': ?internalIp,
      'state': ?state,
      'version': ?version,
    };
  }

  factory PrivateCloudVcenter.fromMap(Map<String, dynamic> map) {
    return PrivateCloudVcenter(
      fqdn: map['fqdn'] == null ? null : (map['fqdn'] as String).input(),
      internalIp: map['internalIp'] == null ? null : (map['internalIp'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

