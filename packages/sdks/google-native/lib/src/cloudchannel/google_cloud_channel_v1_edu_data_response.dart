// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Required Edu Attributes
class GoogleCloudChannelV1EduDataResponse {
  /// Size of the institute.
  final pulumi.Input<String> instituteSize;
  /// Designated institute type of customer.
  final pulumi.Input<String> instituteType;
  /// Web address for the edu customer's institution.
  final pulumi.Input<String> website;

  /// Creates a new [GoogleCloudChannelV1EduDataResponse].
  /// [instituteSize] Size of the institute.
  /// [instituteType] Designated institute type of customer.
  /// [website] Web address for the edu customer's institution.
  const GoogleCloudChannelV1EduDataResponse({
    required this.instituteSize,
    required this.instituteType,
    required this.website,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instituteSize': instituteSize,
      'instituteType': instituteType,
      'website': website,
    };
  }

  factory GoogleCloudChannelV1EduDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1EduDataResponse(
      instituteSize: pulumi.Input.fromValue(map['instituteSize'] as String),
      instituteType: pulumi.Input.fromValue(map['instituteType'] as String),
      website: pulumi.Input.fromValue(map['website'] as String),
    );
  }
}
