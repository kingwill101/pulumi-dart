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
  GoogleCloudChannelV1EduDataResponse({
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
      instituteSize: (map['instituteSize'] as String).input(),
      instituteType: (map['instituteType'] as String).input(),
      website: (map['website'] as String).input(),
    );
  }
}

