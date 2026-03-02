// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about a HCX Cloud Manager appliance.
class HcxResponse {
  /// Fully qualified domain name of the appliance.
  final pulumi.Input<String> fqdn;
  /// Internal IP address of the appliance.
  final pulumi.Input<String> internalIp;
  /// The state of the appliance.
  final pulumi.Input<String> state;
  /// Version of the appliance.
  final pulumi.Input<String> version;

  /// Creates a new [HcxResponse].
  /// [fqdn] Fully qualified domain name of the appliance.
  /// [internalIp] Internal IP address of the appliance.
  /// [state] The state of the appliance.
  /// [version] Version of the appliance.
  HcxResponse({
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

  factory HcxResponse.fromMap(Map<String, dynamic> map) {
    return HcxResponse(
      fqdn: (map['fqdn'] as String).input(),
      internalIp: (map['internalIp'] as String).input(),
      state: (map['state'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

