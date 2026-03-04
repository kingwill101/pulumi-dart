// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A classification object with a product type and value.
class CaseClassificationCloudsupportV2beta {
  /// A display name for the classification. The display name is not static and can change. To uniquely and consistently identify classifications, use the `CaseClassification.id` field.
  final pulumi.Input<String>? displayName;

  /// The unique ID for a classification. Must be specified for case creation. To retrieve valid classification IDs for case creation, use `caseClassifications.search`. Classification IDs returned by `caseClassifications.search` are guaranteed to be valid for at least 6 months. If a given classification is deactiveated, it will immediately stop being returned. After 6 months, `case.create` requests using the classification ID will fail.
  final pulumi.Input<String>? id;

  /// Creates a new [CaseClassificationCloudsupportV2beta].
  /// [displayName] A display name for the classification. The display name is not static and can change. To uniquely and consistently identify classifications, use the `CaseClassification.id` field.
  /// [id] The unique ID for a classification. Must be specified for case creation. To retrieve valid classification IDs for case creation, use `caseClassifications.search`. Classification IDs returned by `caseClassifications.search` are guaranteed to be valid for at least 6 months. If a given classification is deactiveated, it will immediately stop being returned. After 6 months, `case.create` requests using the classification ID will fail.
  CaseClassificationCloudsupportV2beta({this.displayName, this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': ?displayName, 'id': ?id};
  }

  factory CaseClassificationCloudsupportV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return CaseClassificationCloudsupportV2beta(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
