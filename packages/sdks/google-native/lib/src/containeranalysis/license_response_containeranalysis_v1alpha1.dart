// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// License information.
class LicenseResponseContaineranalysisV1alpha1 {
  /// Comments
  final pulumi.Input<String> comments;

  /// Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  final pulumi.Input<String> expression;

  /// Creates a new [LicenseResponseContaineranalysisV1alpha1].
  /// [comments] Comments
  /// [expression] Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  LicenseResponseContaineranalysisV1alpha1({
    required this.comments,
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comments': comments, 'expression': expression};
  }

  factory LicenseResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return LicenseResponseContaineranalysisV1alpha1(
      comments: pulumi.Input.fromValue(map['comments'] as String),
      expression: pulumi.Input.fromValue(map['expression'] as String),
    );
  }
}
