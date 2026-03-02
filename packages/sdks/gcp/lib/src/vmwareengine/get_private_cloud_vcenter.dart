// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrivateCloudVcenter {
  /// Fully qualified domain name of the appliance.
  final pulumi.Input<String> fqdn;
  /// Internal IP address of the appliance.
  final pulumi.Input<String> internalIp;
  /// State of the appliance. Possible values: ["ACTIVE", "CREATING"]
  final pulumi.Input<String> state;
  /// Version of the appliance.
  final pulumi.Input<String> version;

  /// Creates a new [GetPrivateCloudVcenter].
  /// [fqdn] Fully qualified domain name of the appliance.
  /// [internalIp] Internal IP address of the appliance.
  /// [state] State of the appliance. Possible values: ["ACTIVE", "CREATING"]
  /// [version] Version of the appliance.
  GetPrivateCloudVcenter({
    required this.fqdn,
    required this.internalIp,
    required this.state,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'internalIp': internalIp,
      'state': state,
      'version': version,
    };
  }

  factory GetPrivateCloudVcenter.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudVcenter(
      fqdn: (map['fqdn'] as String).input(),
      internalIp: (map['internalIp'] as String).input(),
      state: (map['state'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

