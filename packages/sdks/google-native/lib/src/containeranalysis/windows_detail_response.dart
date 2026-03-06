// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'knowledge_base_response.dart';

class WindowsDetailResponse {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  final pulumi.Input<String> cpeUri;
  /// The description of this vulnerability.
  final pulumi.Input<String> description;
  /// The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed KBs presence is considered a fix.
  final pulumi.Input<List<KnowledgeBaseResponse>> fixingKbs;
  /// The name of this vulnerability.
  final pulumi.Input<String> name;

  /// Creates a new [WindowsDetailResponse].
  /// [cpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  /// [description] The description of this vulnerability.
  /// [fixingKbs] The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed KBs presence is considered a fix.
  /// [name] The name of this vulnerability.
  const WindowsDetailResponse({
    required this.cpeUri,
    required this.description,
    required this.fixingKbs,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': cpeUri,
      'description': description,
      'fixingKbs': pulumi.Input.mapInputValue<List<KnowledgeBaseResponse>, List<Map<String, dynamic>>>(fixingKbs, (value) => pulumi.Input.encodeList<KnowledgeBaseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory WindowsDetailResponse.fromMap(Map<String, dynamic> map) {
    return WindowsDetailResponse(
      cpeUri: pulumi.Input.fromValue(map['cpeUri'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      fixingKbs: pulumi.Input.fromValue(pulumi.Input.decodeList<KnowledgeBaseResponse>(map['fixingKbs']!, (value) => KnowledgeBaseResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

