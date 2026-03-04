// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecResourcesReservationGenericResources {
  /// The Integer resources
  final pulumi.Input<List<String>>? discreteResourcesSpecs;

  /// The String resources
  final pulumi.Input<List<String>>? namedResourcesSpecs;

  /// Creates a new [ServiceTaskSpecResourcesReservationGenericResources].
  /// [discreteResourcesSpecs] The Integer resources
  /// [namedResourcesSpecs] The String resources
  ServiceTaskSpecResourcesReservationGenericResources({
    this.discreteResourcesSpecs,
    this.namedResourcesSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discreteResourcesSpecs': ?discreteResourcesSpecs,
      'namedResourcesSpecs': ?namedResourcesSpecs,
    };
  }

  factory ServiceTaskSpecResourcesReservationGenericResources.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTaskSpecResourcesReservationGenericResources(
      discreteResourcesSpecs: (() {
        final guardedValue = map['discreteResourcesSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      namedResourcesSpecs: (() {
        final guardedValue = map['namedResourcesSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
