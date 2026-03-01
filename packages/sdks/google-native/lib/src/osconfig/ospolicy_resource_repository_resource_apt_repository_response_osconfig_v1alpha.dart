// ignore_for_file: unused_element, unnecessary_cast


/// Represents a single apt package repository. These will be added to a repo file that will be managed at `/etc/apt/sources.list.d/google_osconfig.list`.
class OSPolicyResourceRepositoryResourceAptRepositoryResponseOsconfigV1alpha {
  /// Type of archive files in this repository.
  final String archiveType;
  /// List of components for this repository. Must contain at least one item.
  final List<String> components;
  /// Distribution of this repository.
  final String distribution;
  /// URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  final String gpgKey;
  /// URI for this repository.
  final String uri;

  /// Creates a new [OSPolicyResourceRepositoryResourceAptRepositoryResponseOsconfigV1alpha].
  /// [archiveType] Type of archive files in this repository.
  /// [components] List of components for this repository. Must contain at least one item.
  /// [distribution] Distribution of this repository.
  /// [gpgKey] URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  /// [uri] URI for this repository.
  OSPolicyResourceRepositoryResourceAptRepositoryResponseOsconfigV1alpha({
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

  factory OSPolicyResourceRepositoryResourceAptRepositoryResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceAptRepositoryResponseOsconfigV1alpha(
      archiveType: map['archiveType'] as String,
      components: (map['components'] as List).cast<String>(),
      distribution: map['distribution'] as String,
      gpgKey: map['gpgKey'] as String,
      uri: map['uri'] as String,
    );
  }
}

