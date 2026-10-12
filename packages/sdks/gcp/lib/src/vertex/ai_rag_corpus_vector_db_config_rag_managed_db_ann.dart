// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagCorpusVectorDbConfigRagManagedDbAnn {
  /// Number of leaf nodes in the tree-based structure. Default value is 500.
  final pulumi.Input<int?>? leafCount;
  /// The depth of the tree-based structure. Only depth values of 2 and 3 are supported. Default value is 2.
  final pulumi.Input<int?>? treeDepth;

  /// Creates a new [AiRagCorpusVectorDbConfigRagManagedDbAnn].
  /// [leafCount] Number of leaf nodes in the tree-based structure. Default value is 500.
  /// [treeDepth] The depth of the tree-based structure. Only depth values of 2 and 3 are supported. Default value is 2.
  const AiRagCorpusVectorDbConfigRagManagedDbAnn({
    this.leafCount,
    this.treeDepth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leafCount': ?leafCount,
      'treeDepth': ?treeDepth,
    };
  }

  factory AiRagCorpusVectorDbConfigRagManagedDbAnn.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusVectorDbConfigRagManagedDbAnn(
      leafCount: (() { final guardedValue = map['leafCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      treeDepth: (() { final guardedValue = map['treeDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
