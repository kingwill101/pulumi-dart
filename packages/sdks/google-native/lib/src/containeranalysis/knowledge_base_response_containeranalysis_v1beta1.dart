// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KnowledgeBaseResponseContaineranalysisV1beta1 {
  /// The KB name (generally of the form KB[0-9]+ i.e. KB123456).
  final pulumi.Input<String> name;
  /// A link to the KB in the Windows update catalog - https://www.catalog.update.microsoft.com/
  final pulumi.Input<String> url;

  /// Creates a new [KnowledgeBaseResponseContaineranalysisV1beta1].
  /// [name] The KB name (generally of the form KB[0-9]+ i.e. KB123456).
  /// [url] A link to the KB in the Windows update catalog - https://www.catalog.update.microsoft.com/
  const KnowledgeBaseResponseContaineranalysisV1beta1({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory KnowledgeBaseResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return KnowledgeBaseResponseContaineranalysisV1beta1(
      name: pulumi.Input.fromValue(map['name'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

