// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_response.dart';

/// Derived details about the company.
class CompanyDerivedInfoResponse {
  /// A structured headquarters location of the company, resolved from Company.hq_location if provided.
  final pulumi.Input<LocationResponse> headquartersLocation;

  /// Creates a new [CompanyDerivedInfoResponse].
  /// [headquartersLocation] A structured headquarters location of the company, resolved from Company.hq_location if provided.
  const CompanyDerivedInfoResponse({
    required this.headquartersLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headquartersLocation': pulumi.Input.mapInputValue<LocationResponse, Map<String, dynamic>>(headquartersLocation, (value) => value.toMap()),
    };
  }

  factory CompanyDerivedInfoResponse.fromMap(Map<String, dynamic> map) {
    return CompanyDerivedInfoResponse(
      headquartersLocation: pulumi.Input.fromValue(LocationResponse.fromMap((map['headquartersLocation']! as Map).cast<String, dynamic>())),
    );
  }
}
