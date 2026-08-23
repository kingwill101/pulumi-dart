// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_ref_category_containeranalysis_v1beta1.dart';

/// An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
class ExternalRefContaineranalysisV1beta1 {
  /// An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
  final pulumi.Input<ExternalRefCategoryContaineranalysisV1beta1>? category;
  /// Human-readable information about the purpose and target of the reference
  final pulumi.Input<String>? comment;
  /// The unique string with no spaces necessary to access the package-specific information, metadata, or content within the target location
  final pulumi.Input<String>? locator;
  /// Type of category (e.g. 'npm' for the PACKAGE_MANAGER category)
  final pulumi.Input<String>? type;

  /// Creates a new [ExternalRefContaineranalysisV1beta1].
  /// [category] An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
  /// [comment] Human-readable information about the purpose and target of the reference
  /// [locator] The unique string with no spaces necessary to access the package-specific information, metadata, or content within the target location
  /// [type] Type of category (e.g. 'npm' for the PACKAGE_MANAGER category)
  const ExternalRefContaineranalysisV1beta1({
    this.category,
    this.comment,
    this.locator,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?pulumi.Input.mapOptionalInputValue<ExternalRefCategoryContaineranalysisV1beta1, String>(category, (value) => value.wireValue),
      'comment': ?comment,
      'locator': ?locator,
      'type': ?type,
    };
  }

  factory ExternalRefContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return ExternalRefContaineranalysisV1beta1(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExternalRefCategoryContaineranalysisV1beta1.fromValue(guardedValue as String)); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locator: (() { final guardedValue = map['locator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
