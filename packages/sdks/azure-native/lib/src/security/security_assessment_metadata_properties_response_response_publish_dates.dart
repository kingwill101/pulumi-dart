// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityAssessmentMetadataPropertiesResponseResponsePublishDates {
  final pulumi.Input<String>? gA;
  final pulumi.Input<String> public;

  /// Creates a new [SecurityAssessmentMetadataPropertiesResponseResponsePublishDates].
  /// [gA] Optional.
  /// [public] Required.
  const SecurityAssessmentMetadataPropertiesResponseResponsePublishDates({
    this.gA,
    required this.public,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gA': ?gA,
      'public': public,
    };
  }

  factory SecurityAssessmentMetadataPropertiesResponseResponsePublishDates.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentMetadataPropertiesResponseResponsePublishDates(
      gA: (() { final guardedValue = map['gA']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      public: pulumi.Input.fromValue(map['public'] as String),
    );
  }
}
