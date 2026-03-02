// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityAssessmentMetadataPropertiesResponsePublishDates {
  final pulumi.Input<String>? gA;
  final pulumi.Input<String> public;

  /// Creates a new [SecurityAssessmentMetadataPropertiesResponsePublishDates].
  /// [gA] Optional.
  /// [public] Required.
  SecurityAssessmentMetadataPropertiesResponsePublishDates({
    this.gA,
    required this.public,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gA': ?gA,
      'public': public,
    };
  }

  factory SecurityAssessmentMetadataPropertiesResponsePublishDates.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentMetadataPropertiesResponsePublishDates(
      gA: map['gA'] == null ? null : (map['gA']! as String).input(),
      public: (map['public'] as String).input(),
    );
  }
}

