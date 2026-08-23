// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about a NSX Manager appliance.
class NsxResponse {
  /// Fully qualified domain name of the appliance.
  final pulumi.Input<String> fqdn;
  /// Internal IP address of the appliance.
  final pulumi.Input<String> internalIp;
  /// The state of the appliance.
  final pulumi.Input<String> state;
  /// Version of the appliance.
  final pulumi.Input<String> version;

  /// Creates a new [NsxResponse].
  /// [fqdn] Fully qualified domain name of the appliance.
  /// [internalIp] Internal IP address of the appliance.
  /// [state] The state of the appliance.
  /// [version] Version of the appliance.
  const NsxResponse({
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

  factory NsxResponse.fromMap(Map<String, dynamic> map) {
    return NsxResponse(
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      internalIp: pulumi.Input.fromValue(map['internalIp'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
