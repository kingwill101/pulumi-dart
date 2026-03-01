// ignore_for_file: unused_element, unnecessary_cast


class SoftwareUpdateConfigurationWindows {
  /// Specifies the list of update classification. Possible values are `Unclassified`, `Critical`, `Security`, `UpdateRollup`, `FeaturePack`, `ServicePack`, `Definition`, `Tools` and `Updates`.
  final List<String> classificationsIncludeds;
  /// Specifies a list of knowledge base numbers excluded.
  final List<String>? excludedKnowledgeBaseNumbers;
  /// Specifies a list of knowledge base numbers included.
  final List<String>? includedKnowledgeBaseNumbers;
  /// Specifies the reboot settings after software update, possible values are `IfRequired`, `Never`, `RebootOnly` and `Always`. Defaults to `IfRequired`.
  final String? reboot;

  /// Creates a new [SoftwareUpdateConfigurationWindows].
  /// [classificationsIncludeds] Specifies the list of update classification. Possible values are `Unclassified`, `Critical`, `Security`, `UpdateRollup`, `FeaturePack`, `ServicePack`, `Definition`, `Tools` and `Updates`.
  /// [excludedKnowledgeBaseNumbers] Specifies a list of knowledge base numbers excluded.
  /// [includedKnowledgeBaseNumbers] Specifies a list of knowledge base numbers included.
  /// [reboot] Specifies the reboot settings after software update, possible values are `IfRequired`, `Never`, `RebootOnly` and `Always`. Defaults to `IfRequired`.
  SoftwareUpdateConfigurationWindows({
    required this.classificationsIncludeds,
    this.excludedKnowledgeBaseNumbers,
    this.includedKnowledgeBaseNumbers,
    this.reboot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationsIncludeds': classificationsIncludeds,
      'excludedKnowledgeBaseNumbers': ?excludedKnowledgeBaseNumbers,
      'includedKnowledgeBaseNumbers': ?includedKnowledgeBaseNumbers,
      'reboot': ?reboot,
    };
  }

  factory SoftwareUpdateConfigurationWindows.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationWindows(
      classificationsIncludeds: (map['classificationsIncludeds'] as List).cast<String>(),
      excludedKnowledgeBaseNumbers: map['excludedKnowledgeBaseNumbers'] == null ? null : (map['excludedKnowledgeBaseNumbers'] as List).cast<String>(),
      includedKnowledgeBaseNumbers: map['includedKnowledgeBaseNumbers'] == null ? null : (map['includedKnowledgeBaseNumbers'] as List).cast<String>(),
      reboot: map['reboot'] == null ? null : map['reboot'] as String,
    );
  }
}

