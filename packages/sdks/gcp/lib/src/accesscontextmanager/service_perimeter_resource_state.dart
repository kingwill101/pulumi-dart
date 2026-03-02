// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServicePerimeterResource resources.
class ServicePerimeterResourceState {
  /// The name of the Access Policy this resource belongs to.
  final pulumi.Input<String>? accessPolicyId;
  /// The perimeter etag is internally used to prevent overwriting the list of perimeter resources on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of resources. The resource to add or remove is merged into that list and then this etag is sent with the PATCH call along with the updated resource list.
  final pulumi.Input<String>? etag;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String>? perimeterName;
  /// A GCP resource that is inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  final pulumi.Input<String>? resource;

  /// Creates a new [ServicePerimeterResourceState].
  /// [accessPolicyId] The name of the Access Policy this resource belongs to.
  /// [etag] The perimeter etag is internally used to prevent overwriting the list of perimeter resources on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of resources. The resource to add or remove is merged into that list and then this etag is sent with the PATCH call along with the updated resource list.
  /// [perimeterName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  ServicePerimeterResourceState({
    this.accessPolicyId,
    this.etag,
    this.perimeterName,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': ?accessPolicyId,
      'etag': ?etag,
      'perimeterName': ?perimeterName,
      'resource': ?resource,
    };
  }

  factory ServicePerimeterResourceState.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterResourceState(
      accessPolicyId: map['accessPolicyId'] == null ? null : (map['accessPolicyId']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      perimeterName: map['perimeterName'] == null ? null : (map['perimeterName']! as String).input(),
      resource: map['resource'] == null ? null : (map['resource']! as String).input(),
    );
  }
}

