// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountSharePropertiesSmb {
  /// A set of SMB authentication methods. Possible values are `NTLMv2`, and `Kerberos`.
  final pulumi.Input<List<String>>? authenticationTypes;
  /// A set of SMB channel encryption. Possible values are `AES-128-CCM`, `AES-128-GCM`, and `AES-256-GCM`.
  final pulumi.Input<List<String>>? channelEncryptionTypes;
  /// A set of Kerberos ticket encryption. Possible values are `RC4-HMAC`, and `AES-256`.
  final pulumi.Input<List<String>>? kerberosTicketEncryptionTypes;
  /// Indicates whether multichannel is enabled. Defaults to `false`. This is only supported on Premium storage accounts.
  final pulumi.Input<bool>? multichannelEnabled;
  /// A set of SMB protocol versions. Possible values are `SMB2.1`, `SMB3.0`, and `SMB3.1.1`.
  final pulumi.Input<List<String>>? versions;

  /// Creates a new [AccountSharePropertiesSmb].
  /// [authenticationTypes] A set of SMB authentication methods. Possible values are `NTLMv2`, and `Kerberos`.
  /// [channelEncryptionTypes] A set of SMB channel encryption. Possible values are `AES-128-CCM`, `AES-128-GCM`, and `AES-256-GCM`.
  /// [kerberosTicketEncryptionTypes] A set of Kerberos ticket encryption. Possible values are `RC4-HMAC`, and `AES-256`.
  /// [multichannelEnabled] Indicates whether multichannel is enabled. Defaults to `false`. This is only supported on Premium storage accounts.
  /// [versions] A set of SMB protocol versions. Possible values are `SMB2.1`, `SMB3.0`, and `SMB3.1.1`.
  AccountSharePropertiesSmb({
    this.authenticationTypes,
    this.channelEncryptionTypes,
    this.kerberosTicketEncryptionTypes,
    this.multichannelEnabled,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationTypes': ?authenticationTypes,
      'channelEncryptionTypes': ?channelEncryptionTypes,
      'kerberosTicketEncryptionTypes': ?kerberosTicketEncryptionTypes,
      'multichannelEnabled': ?multichannelEnabled,
      'versions': ?versions,
    };
  }

  factory AccountSharePropertiesSmb.fromMap(Map<String, dynamic> map) {
    return AccountSharePropertiesSmb(
      authenticationTypes: map['authenticationTypes'] == null ? null : ((map['authenticationTypes']! as List).cast<String>()).input(),
      channelEncryptionTypes: map['channelEncryptionTypes'] == null ? null : ((map['channelEncryptionTypes']! as List).cast<String>()).input(),
      kerberosTicketEncryptionTypes: map['kerberosTicketEncryptionTypes'] == null ? null : ((map['kerberosTicketEncryptionTypes']! as List).cast<String>()).input(),
      multichannelEnabled: map['multichannelEnabled'] == null ? null : (map['multichannelEnabled']! as bool).input(),
      versions: map['versions'] == null ? null : ((map['versions']! as List).cast<String>()).input(),
    );
  }
}

