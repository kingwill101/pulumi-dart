// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SoftwareUpdateConfigurationWindows {
  /// Specifies the list of update classification. Possible values are `Unclassified`, `Critical`, `Security`, `UpdateRollup`, `FeaturePack`, `ServicePack`, `Definition`, `Tools` and `Updates`.
  final pulumi.Input<List<String>> classificationsIncludeds;
  /// Specifies a list of knowledge base numbers excluded.
  final pulumi.Input<List<String>>? excludedKnowledgeBaseNumbers;
  /// Specifies a list of knowledge base numbers included.
  final pulumi.Input<List<String>>? includedKnowledgeBaseNumbers;
  /// Specifies the reboot settings after software update, possible values are `IfRequired`, `Never`, `RebootOnly` and `Always`. Defaults to `IfRequired`.
  final pulumi.Input<String>? reboot;

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
      classificationsIncludeds: pulumi.Input.fromValue((map['classificationsIncludeds'] as List).cast<String>()),
      excludedKnowledgeBaseNumbers: (() { final guardedValue = map['excludedKnowledgeBaseNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedKnowledgeBaseNumbers: (() { final guardedValue = map['includedKnowledgeBaseNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      reboot: (() { final guardedValue = map['reboot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

