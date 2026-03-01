// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'knowledge_base_containeranalysis_v1beta1.dart';

class WindowsDetailContaineranalysisV1beta1 {
  /// The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar.
  final String cpeUri;
  /// The description of the vulnerability.
  final String? description;
  /// The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed kb's presence is considered a fix.
  final List<KnowledgeBaseContaineranalysisV1beta1> fixingKbs;
  /// The name of the vulnerability.
  final String name;

  /// Creates a new [WindowsDetailContaineranalysisV1beta1].
  /// [cpeUri] The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar.
  /// [description] The description of the vulnerability.
  /// [fixingKbs] The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed kb's presence is considered a fix.
  /// [name] The name of the vulnerability.
  WindowsDetailContaineranalysisV1beta1({
    required this.cpeUri,
    this.description,
    required this.fixingKbs,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': cpeUri,
      'description': ?description,
      'fixingKbs': pulumi.Input.encodeList<KnowledgeBaseContaineranalysisV1beta1, Map<String, dynamic>>(fixingKbs, (value) => value.toMap()),
      'name': name,
    };
  }

  factory WindowsDetailContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return WindowsDetailContaineranalysisV1beta1(
      cpeUri: map['cpeUri'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      fixingKbs: pulumi.Input.decodeList<KnowledgeBaseContaineranalysisV1beta1>(map['fixingKbs'], (value) => KnowledgeBaseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

