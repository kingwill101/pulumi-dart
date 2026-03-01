// ignore_for_file: unused_element, unnecessary_cast


/// Represents a single Apt package repository. This repository is added to a repo file that is stored at `/etc/apt/sources.list.d/google_osconfig.list`.
class AptRepositoryResponse {
  /// Type of archive files in this repository. The default behavior is DEB.
  final String archiveType;
  /// List of components for this repository. Must contain at least one item.
  final List<String> components;
  /// Distribution of this repository.
  final String distribution;
  /// URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg` containing all the keys in any applied guest policy.
  final String gpgKey;
  /// URI for this repository.
  final String uri;

  /// Creates a new [AptRepositoryResponse].
  /// [archiveType] Type of archive files in this repository. The default behavior is DEB.
  /// [components] List of components for this repository. Must contain at least one item.
  /// [distribution] Distribution of this repository.
  /// [gpgKey] URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg` containing all the keys in any applied guest policy.
  /// [uri] URI for this repository.
  AptRepositoryResponse({
    required this.archiveType,
    required this.components,
    required this.distribution,
    required this.gpgKey,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveType': archiveType,
      'components': components,
      'distribution': distribution,
      'gpgKey': gpgKey,
      'uri': uri,
    };
  }

  factory AptRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return AptRepositoryResponse(
      archiveType: map['archiveType'] as String,
      components: (map['components'] as List).cast<String>(),
      distribution: map['distribution'] as String,
      gpgKey: map['gpgKey'] as String,
      uri: map['uri'] as String,
    );
  }
}

