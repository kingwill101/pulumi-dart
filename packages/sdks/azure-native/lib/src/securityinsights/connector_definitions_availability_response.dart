// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The exposure status of the connector to the customers.
class ConnectorDefinitionsAvailabilityResponse {
  /// Gets or sets a value indicating whether the connector is preview.
  final pulumi.Input<bool>? isPreview;

  /// The exposure status of the connector to the customers. Available values are 0-4 (0=None, 1=Available, 2=FeatureFlag, 3=Internal).
  final pulumi.Input<int>? status;

  /// Creates a new [ConnectorDefinitionsAvailabilityResponse].
  /// [isPreview] Gets or sets a value indicating whether the connector is preview.
  /// [status] The exposure status of the connector to the customers. Available values are 0-4 (0=None, 1=Available, 2=FeatureFlag, 3=Internal).
  ConnectorDefinitionsAvailabilityResponse({this.isPreview, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'isPreview': ?isPreview, 'status': ?status};
  }

  factory ConnectorDefinitionsAvailabilityResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorDefinitionsAvailabilityResponse(
      isPreview: (() {
        final guardedValue = map['isPreview'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
