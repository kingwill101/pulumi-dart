// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_group.dart';

/// Details of the Program EduEnrollment.
class EduEnrollmentProperties {
  /// The domain groups associated with this enrollment.
  final pulumi.Input<List<DomainGroup>> domains;

  /// Creates a new [EduEnrollmentProperties].
  /// [domains] The domain groups associated with this enrollment.
  const EduEnrollmentProperties({
    required this.domains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.mapInputValue<List<DomainGroup>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<DomainGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EduEnrollmentProperties.fromMap(Map<String, dynamic> map) {
    return EduEnrollmentProperties(
      domains: pulumi.Input.fromValue(pulumi.Input.decodeList<DomainGroup>(map['domains']!, (value) => DomainGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
