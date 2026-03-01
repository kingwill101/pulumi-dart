// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecResourcesReservationGenericResources {
  /// The Integer resources
  final List<String>? discreteResourcesSpecs;
  /// The String resources
  final List<String>? namedResourcesSpecs;

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

  factory ServiceTaskSpecResourcesReservationGenericResources.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecResourcesReservationGenericResources(
      discreteResourcesSpecs: map['discreteResourcesSpecs'] == null ? null : (map['discreteResourcesSpecs'] as List).cast<String>(),
      namedResourcesSpecs: map['namedResourcesSpecs'] == null ? null : (map['namedResourcesSpecs'] as List).cast<String>(),
    );
  }
}

