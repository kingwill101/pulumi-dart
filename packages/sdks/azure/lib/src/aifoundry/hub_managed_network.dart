// ignore_for_file: unused_element, unnecessary_cast


class HubManagedNetwork {
  /// The isolation mode of the AI Foundry Hub. Possible values are `Disabled`, `AllowOnlyApprovedOutbound`, and `AllowInternetOutbound`.
  final String? isolationMode;

  /// Creates a new [HubManagedNetwork].
  /// [isolationMode] The isolation mode of the AI Foundry Hub. Possible values are `Disabled`, `AllowOnlyApprovedOutbound`, and `AllowInternetOutbound`.
  HubManagedNetwork({
    this.isolationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolationMode': ?isolationMode,
    };
  }

  factory HubManagedNetwork.fromMap(Map<String, dynamic> map) {
    return HubManagedNetwork(
      isolationMode: map['isolationMode'] == null ? null : map['isolationMode'] as String,
    );
  }
}

