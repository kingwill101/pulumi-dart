// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// License information.
class LicenseResponseContaineranalysisV1beta1 {
  /// Comments
  final pulumi.Input<String> comments;
  /// Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  final pulumi.Input<String> expression;

  /// Creates a new [LicenseResponseContaineranalysisV1beta1].
  /// [comments] Comments
  /// [expression] Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  LicenseResponseContaineranalysisV1beta1({
    required this.comments,
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': comments,
      'expression': expression,
    };
  }

  factory LicenseResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return LicenseResponseContaineranalysisV1beta1(
      comments: (map['comments'] as String).input(),
      expression: (map['expression'] as String).input(),
    );
  }
}

