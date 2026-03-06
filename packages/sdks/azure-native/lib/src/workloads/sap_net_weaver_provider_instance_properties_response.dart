// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the provider properties.
class SapNetWeaverProviderInstancePropertiesResponse {
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

  /// Creates a new [SapNetWeaverProviderInstancePropertiesResponse].
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
  const SapNetWeaverProviderInstancePropertiesResponse({
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

  factory SapNetWeaverProviderInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SapNetWeaverProviderInstancePropertiesResponse(
      providerType: pulumi.Input.fromValue(map['providerType'] as String),
      sapClientId: (() { final guardedValue = map['sapClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sapHostFileEntries: (() { final guardedValue = map['sapHostFileEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sapHostname: (() { final guardedValue = map['sapHostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sapInstanceNr: (() { final guardedValue = map['sapInstanceNr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sapPassword: (() { final guardedValue = map['sapPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sapPasswordUri: (() { final guardedValue = map['sapPasswordUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sapPortNumber: (() { final guardedValue = map['sapPortNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sapSid: (() { final guardedValue = map['sapSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sapUsername: (() { final guardedValue = map['sapUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificateUri: (() { final guardedValue = map['sslCertificateUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslPreference: (() { final guardedValue = map['sslPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

