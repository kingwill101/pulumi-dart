// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'knowledge_base.dart';

class WindowsDetail {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  final pulumi.Input<String> cpeUri;
  /// The description of this vulnerability.
  final pulumi.Input<String>? description;
  /// The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed KBs presence is considered a fix.
  final pulumi.Input<List<KnowledgeBase>> fixingKbs;
  /// The name of this vulnerability.
  final pulumi.Input<String> name;

  /// Creates a new [WindowsDetail].
  /// [cpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  /// [description] The description of this vulnerability.
  /// [fixingKbs] The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed KBs presence is considered a fix.
  /// [name] The name of this vulnerability.
  WindowsDetail({
    required this.cpeUri,
    this.description,
    required this.fixingKbs,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': cpeUri,
      'description': ?description,
      'fixingKbs': pulumi.Input.mapInputValue<List<KnowledgeBase>, List<Map<String, dynamic>>>(fixingKbs, (value) => pulumi.Input.encodeList<KnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory WindowsDetail.fromMap(Map<String, dynamic> map) {
    return WindowsDetail(
      cpeUri: (map['cpeUri'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fixingKbs: (pulumi.Input.decodeList<KnowledgeBase>(map['fixingKbs'], (value) => KnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

