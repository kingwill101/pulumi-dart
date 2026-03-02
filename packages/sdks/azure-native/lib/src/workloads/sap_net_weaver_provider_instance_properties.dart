// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the provider properties.
class SapNetWeaverProviderInstanceProperties {
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'SapNetWeaver'.
  final pulumi.Input<String> providerType;
  /// Gets or sets the SAP Client ID.
  final pulumi.Input<String>? sapClientId;
  /// Gets or sets the list of HostFile Entries
  final pulumi.Input<List<String>>? sapHostFileEntries;
  /// Gets or sets the target virtual machine IP Address/FQDN.
  final pulumi.Input<String>? sapHostname;
  /// Gets or sets the instance number of SAP NetWeaver.
  final pulumi.Input<String>? sapInstanceNr;
  /// Sets the SAP password.
  final pulumi.Input<String>? sapPassword;
  /// Gets or sets the key vault URI to secret with the SAP password.
  final pulumi.Input<String>? sapPasswordUri;
  /// Gets or sets the SAP HTTP port number.
  final pulumi.Input<String>? sapPortNumber;
  /// Gets or sets the SAP System Identifier
  final pulumi.Input<String>? sapSid;
  /// Gets or sets the SAP user name.
  final pulumi.Input<String>? sapUsername;
  /// Gets or sets the blob URI to SSL certificate for the SAP system.
  final pulumi.Input<String>? sslCertificateUri;
  /// Gets or sets certificate preference if secure communication is enabled.
  final pulumi.Input<String>? sslPreference;

  /// Creates a new [SapNetWeaverProviderInstanceProperties].
  /// [providerType] The provider type. For example, the value can be SapHana.
  /// [sapClientId] Gets or sets the SAP Client ID.
  /// [sapHostFileEntries] Gets or sets the list of HostFile Entries
  /// [sapHostname] Gets or sets the target virtual machine IP Address/FQDN.
  /// [sapInstanceNr] Gets or sets the instance number of SAP NetWeaver.
  /// [sapPassword] Sets the SAP password.
  /// [sapPasswordUri] Gets or sets the key vault URI to secret with the SAP password.
  /// [sapPortNumber] Gets or sets the SAP HTTP port number.
  /// [sapSid] Gets or sets the SAP System Identifier
  /// [sapUsername] Gets or sets the SAP user name.
  /// [sslCertificateUri] Gets or sets the blob URI to SSL certificate for the SAP system.
  /// [sslPreference] Gets or sets certificate preference if secure communication is enabled.
  SapNetWeaverProviderInstanceProperties({
    required this.providerType,
    this.sapClientId,
    this.sapHostFileEntries,
    this.sapHostname,
    this.sapInstanceNr,
    this.sapPassword,
    this.sapPasswordUri,
    this.sapPortNumber,
    this.sapSid,
    this.sapUsername,
    this.sslCertificateUri,
    this.sslPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerType': providerType,
      'sapClientId': ?sapClientId,
      'sapHostFileEntries': ?sapHostFileEntries,
      'sapHostname': ?sapHostname,
      'sapInstanceNr': ?sapInstanceNr,
      'sapPassword': ?sapPassword,
      'sapPasswordUri': ?sapPasswordUri,
      'sapPortNumber': ?sapPortNumber,
      'sapSid': ?sapSid,
      'sapUsername': ?sapUsername,
      'sslCertificateUri': ?sslCertificateUri,
      'sslPreference': ?sslPreference,
    };
  }

  factory SapNetWeaverProviderInstanceProperties.fromMap(Map<String, dynamic> map) {
    return SapNetWeaverProviderInstanceProperties(
      providerType: (map['providerType'] as String).input(),
      sapClientId: map['sapClientId'] == null ? null : (map['sapClientId']! as String).input(),
      sapHostFileEntries: map['sapHostFileEntries'] == null ? null : ((map['sapHostFileEntries']! as List).cast<String>()).input(),
      sapHostname: map['sapHostname'] == null ? null : (map['sapHostname']! as String).input(),
      sapInstanceNr: map['sapInstanceNr'] == null ? null : (map['sapInstanceNr']! as String).input(),
      sapPassword: map['sapPassword'] == null ? null : (map['sapPassword']! as String).input(),
      sapPasswordUri: map['sapPasswordUri'] == null ? null : (map['sapPasswordUri']! as String).input(),
      sapPortNumber: map['sapPortNumber'] == null ? null : (map['sapPortNumber']! as String).input(),
      sapSid: map['sapSid'] == null ? null : (map['sapSid']! as String).input(),
      sapUsername: map['sapUsername'] == null ? null : (map['sapUsername']! as String).input(),
      sslCertificateUri: map['sslCertificateUri'] == null ? null : (map['sslCertificateUri']! as String).input(),
      sslPreference: map['sslPreference'] == null ? null : (map['sslPreference']! as String).input(),
    );
  }
}

