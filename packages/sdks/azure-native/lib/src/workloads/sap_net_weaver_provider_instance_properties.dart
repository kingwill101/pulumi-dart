// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the provider properties.
class SapNetWeaverProviderInstanceProperties {
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'SapNetWeaver'.
  final String providerType;
  /// Gets or sets the SAP Client ID.
  final String? sapClientId;
  /// Gets or sets the list of HostFile Entries
  final List<String>? sapHostFileEntries;
  /// Gets or sets the target virtual machine IP Address/FQDN.
  final String? sapHostname;
  /// Gets or sets the instance number of SAP NetWeaver.
  final String? sapInstanceNr;
  /// Sets the SAP password.
  final String? sapPassword;
  /// Gets or sets the key vault URI to secret with the SAP password.
  final String? sapPasswordUri;
  /// Gets or sets the SAP HTTP port number.
  final String? sapPortNumber;
  /// Gets or sets the SAP System Identifier
  final String? sapSid;
  /// Gets or sets the SAP user name.
  final String? sapUsername;
  /// Gets or sets the blob URI to SSL certificate for the SAP system.
  final String? sslCertificateUri;
  /// Gets or sets certificate preference if secure communication is enabled.
  final String? sslPreference;

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
      providerType: map['providerType'] as String,
      sapClientId: map['sapClientId'] == null ? null : map['sapClientId'] as String,
      sapHostFileEntries: map['sapHostFileEntries'] == null ? null : (map['sapHostFileEntries'] as List).cast<String>(),
      sapHostname: map['sapHostname'] == null ? null : map['sapHostname'] as String,
      sapInstanceNr: map['sapInstanceNr'] == null ? null : map['sapInstanceNr'] as String,
      sapPassword: map['sapPassword'] == null ? null : map['sapPassword'] as String,
      sapPasswordUri: map['sapPasswordUri'] == null ? null : map['sapPasswordUri'] as String,
      sapPortNumber: map['sapPortNumber'] == null ? null : map['sapPortNumber'] as String,
      sapSid: map['sapSid'] == null ? null : map['sapSid'] as String,
      sapUsername: map['sapUsername'] == null ? null : map['sapUsername'] as String,
      sslCertificateUri: map['sslCertificateUri'] == null ? null : map['sslCertificateUri'] as String,
      sslPreference: map['sslPreference'] == null ? null : map['sslPreference'] as String,
    );
  }
}

