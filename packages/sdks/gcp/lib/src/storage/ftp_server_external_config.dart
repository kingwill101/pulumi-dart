// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FtpServerExternalConfig {
  /// A list of allowed IPv4 or IPv6 CIDR block ranges that can connect to this server.
  final pulumi.Input<List<String>?>? allowedCidrBlocks;
  /// (Output)
  /// The public IP address of the external load balancer for the SFTP server.
  final pulumi.Input<String?>? ipAddress;

  /// Creates a new [FtpServerExternalConfig].
  /// [allowedCidrBlocks] A list of allowed IPv4 or IPv6 CIDR block ranges that can connect to this server.
  /// [ipAddress] (Output)
  const FtpServerExternalConfig({
    this.allowedCidrBlocks,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCidrBlocks': ?allowedCidrBlocks,
      'ipAddress': ?ipAddress,
    };
  }

  factory FtpServerExternalConfig.fromMap(Map<String, dynamic> map) {
    return FtpServerExternalConfig(
      allowedCidrBlocks: (() { final guardedValue = map['allowedCidrBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
