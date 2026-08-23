// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration associated with the allocated antenna.
class ContactsPropertiesResponseAntennaConfiguration {
  /// The destination IP a packet can be sent to. This would for example be the TCP endpoint you would send data to.
  final pulumi.Input<String>? destinationIp;
  /// List of Source IP
  final pulumi.Input<List<String>>? sourceIps;

  /// Creates a new [ContactsPropertiesResponseAntennaConfiguration].
  /// [destinationIp] The destination IP a packet can be sent to. This would for example be the TCP endpoint you would send data to.
  /// [sourceIps] List of Source IP
  const ContactsPropertiesResponseAntennaConfiguration({
    this.destinationIp,
    this.sourceIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationIp': ?destinationIp,
      'sourceIps': ?sourceIps,
    };
  }

  factory ContactsPropertiesResponseAntennaConfiguration.fromMap(Map<String, dynamic> map) {
    return ContactsPropertiesResponseAntennaConfiguration(
      destinationIp: (() { final guardedValue = map['destinationIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIps: (() { final guardedValue = map['sourceIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
