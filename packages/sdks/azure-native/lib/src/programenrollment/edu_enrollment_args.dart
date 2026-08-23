// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edu_enrollment_properties.dart';

/// {@template pulumi_programenrollment_edu_enrollment_args_doc}
/// The set of arguments for EduEnrollment.
/// {@endtemplate}
/// {@macro pulumi_programenrollment_edu_enrollment_args_doc}
class EduEnrollmentArgs {
  /// The name of the edu enrollment
  final pulumi.Input<String>? enrollmentName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<EduEnrollmentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EduEnrollmentArgs].
  /// [enrollmentName] The name of the edu enrollment
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const EduEnrollmentArgs({
    this.enrollmentName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enrollmentName': ?enrollmentName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<EduEnrollmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EduEnrollmentArgs.fromMap(Map<String, dynamic> map) {
    return EduEnrollmentArgs(
      enrollmentName: (() { final guardedValue = map['enrollmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EduEnrollmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
